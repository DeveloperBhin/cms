(function () {
  'use strict';

  var widget = document.querySelector('.tari-chatbot');

  if (!widget) {
    return;
  }

  var panel = document.getElementById('tariChatWindow');
  var launcher = widget.querySelector('[data-chat-toggle]');
  var closeButton = widget.querySelector('[data-chat-close]');
  var form = document.getElementById('tariChatForm');
  var input = document.getElementById('tariMessageInput');
  var sendButton = document.getElementById('tariChatSend');
  var messages = document.getElementById('tariChatBody');
  var endpoint = widget.getAttribute('data-endpoint');
  var isSending = false;

  function setOpen(isOpen) {
    widget.classList.toggle('is-open', isOpen);
    panel.hidden = !isOpen;
    panel.setAttribute('aria-hidden', String(!isOpen));
    launcher.setAttribute('aria-expanded', String(isOpen));

    if (isOpen) {
      input.focus();
    } else {
      launcher.focus();
    }
  }

  function appendMessage(text, type, extraClass) {
    var message = document.createElement('div');

    message.className = 'tari-chatbot__message tari-chatbot__message--' + type;
    if (extraClass) {
      message.classList.add(extraClass);
    }
    message.textContent = text;
    messages.appendChild(message);
    messages.scrollTop = messages.scrollHeight;

    return message;
  }

  function resizeInput() {
    input.style.height = 'auto';
    input.style.height = Math.min(input.scrollHeight, 110) + 'px';
  }

  async function sendMessage(messageText) {
    var message = messageText.trim();

    if (!message || isSending) {
      return;
    }

    isSending = true;
    sendButton.disabled = true;
    appendMessage(message, 'user');
    input.value = '';
    resizeInput();

    var pendingMessage = appendMessage('Bwana Shamba is thinking...', 'assistant', 'tari-chatbot__message--loading');

    try {
      var response = await fetch(endpoint, {
        method: 'POST',
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        },
        credentials: 'same-origin',
        body: JSON.stringify({ message: message })
      });

      if (!response.ok) {
        throw new Error('http:' + response.status);
      }

      var data = await response.json();
      if (!data || typeof data.reply !== 'string' || !data.reply.trim()) {
        throw new Error('invalid-response');
      }

      pendingMessage.remove();
      appendMessage(data.reply, 'assistant');
    } catch (error) {
      pendingMessage.remove();

      if (error.message.indexOf('http:') === 0) {
        appendMessage('I could not get an answer just now (error ' + error.message.slice(5) + '). Please try again.', 'assistant', 'tari-chatbot__message--error');
      } else if (error.message === 'invalid-response' || error instanceof SyntaxError) {
        appendMessage('The answer service returned an unreadable response. Please try again.', 'assistant', 'tari-chatbot__message--error');
      } else {
        appendMessage('I could not connect to the answer service. Check your connection and try again.', 'assistant', 'tari-chatbot__message--error');
      }
    } finally {
      isSending = false;
      sendButton.disabled = false;
      input.focus();
    }
  }

  launcher.addEventListener('click', function () {
    setOpen(panel.hidden);
  });

  closeButton.addEventListener('click', function () {
    setOpen(false);
  });

  form.addEventListener('submit', function (event) {
    event.preventDefault();
    sendMessage(input.value);
  });

  input.addEventListener('input', resizeInput);
  input.addEventListener('keydown', function (event) {
    if (event.key === 'Enter' && !event.shiftKey) {
      event.preventDefault();
      form.requestSubmit();
    }
  });

  widget.addEventListener('click', function (event) {
    var suggestion = event.target.closest('[data-chat-suggestion]');

    if (suggestion) {
      input.value = suggestion.getAttribute('data-chat-suggestion');
      sendMessage(input.value);
    }
  });

  document.addEventListener('keydown', function (event) {
    if (event.key === 'Escape' && !panel.hidden) {
      setOpen(false);
    }
  });
}());
