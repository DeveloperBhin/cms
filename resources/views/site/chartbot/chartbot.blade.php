<div class="tari-chatbot" data-endpoint="{{ url('/api/chat') }}">
    <section class="tari-chatbot__panel" id="tariChatWindow" aria-labelledby="tariChatTitle" aria-hidden="true" hidden>
        <header class="tari-chatbot__header">
            <div class="tari-chatbot__identity">
                <div class="tari-chatbot__avatar" aria-hidden="true">
                    <svg viewBox="0 0 24 24" focusable="false">
                        <path d="M12 21c-4.5-2.5-7-6.2-7-10.8V5l7-3 7 3v5.2C19 14.8 16.5 18.5 12 21Z" />
                        <path d="M12 17V9m0 5c-2.3 0-3.8-1.4-4.3-3.6 2.5-.1 4.3 1.1 4.3 3.6Zm0-2c0-2.2 1.4-3.7 3.8-4.2.1 2.4-1.1 4.2-3.8 4.2Z" />
                    </svg>
                </div>
                <div>
                    <h2 class="tari-chatbot__title" id="tariChatTitle">Bwana Shamba</h2>
                    <p class="tari-chatbot__status"><span></span> TARI’s farming assistant</p>
                </div>
            </div>
            <button class="tari-chatbot__close" type="button" aria-label="Close chat" data-chat-close>
                <svg viewBox="0 0 24 24" aria-hidden="true">
                    <path d="m6 6 12 12M18 6 6 18" />
                </svg>
            </button>
        </header>

        <div class="tari-chatbot__messages" id="tariChatBody" role="log" aria-live="polite" aria-relevant="additions text">
            <div class="tari-chatbot__welcome">
                <span class="tari-chatbot__eyebrow">KARIBU · WELCOME</span>
                <p>Habari! I’m Bwana Shamba. Ask me about farming, crops, and TARI’s services.</p>
                <div class="tari-chatbot__suggestions" aria-label="Suggested questions">
                    <button type="button" data-chat-suggestion="What crop varieties does TARI recommend?">Crop varieties</button>
                    <button type="button" data-chat-suggestion="Where can I find my nearest TARI centre?">TARI centres</button>
                </div>
            </div>
        </div>

        <form class="tari-chatbot__composer" id="tariChatForm">
            <label class="tari-chatbot__sr-only" for="tariMessageInput">Your message</label>
            <textarea id="tariMessageInput" name="message" rows="1" maxlength="2000" placeholder="Ask Bwana Shamba..." required></textarea>
            <button class="tari-chatbot__send" id="tariChatSend" type="submit" aria-label="Send message">
                <svg viewBox="0 0 24 24" aria-hidden="true">
                    <path d="M4 12 20 4l-5 16-3.5-6.5L4 12Z" />
                    <path d="m11.5 13.5 4-4" />
                </svg>
            </button>
            <p class="tari-chatbot__hint">Bwana Shamba can make mistakes. Verify important advice.</p>
        </form>
    </section>

    <button class="tari-chatbot__launcher" type="button" aria-label="Chat with Bwana Shamba" aria-controls="tariChatWindow" aria-expanded="false" data-chat-toggle>
        <svg class="tari-chatbot__launcher-icon tari-chatbot__launcher-icon--chat" viewBox="0 0 24 24" aria-hidden="true">
            <path d="M20 11.5a7.5 7.5 0 0 1-7.5 7.5 8 8 0 0 1-3.5-.8L4 20l1.4-4A7.5 7.5 0 1 1 20 11.5Z" />
            <path d="M8 11.5h.01M12 11.5h.01M16 11.5h.01" />
        </svg>
        <svg class="tari-chatbot__launcher-icon tari-chatbot__launcher-icon--close" viewBox="0 0 24 24" aria-hidden="true">
            <path d="m6 6 12 12M18 6 6 18" />
        </svg>
        <span>Ask Bwana Shamba</span>
    </button>
</div>
