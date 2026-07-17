<div class="tari-chatbot-wrapper">


    <!-- Chat Window -->
    <div class="tari-chat-window" id="tariChatWindow">


        <div class="tari-chat-header">

            <span>
                🤖 TARI AI Assistant
            </span>


            <button onclick="toggleTariChat()">
                ×
            </button>

        </div>



        <div class="tari-chat-body" id="tariChatBody">


            <div class="tari-message bot">
                Karibu TARI AI Assistant.
                Naweza kukusaidia kuhusu huduma za TARI.
            </div>


        </div>




        <div class="tari-chat-footer">


            <input 
            type="text"
            id="tariMessageInput"
            placeholder="Uliza TARI..."
            >


            <button onclick="sendTariMessage()">
                ➤
            </button>


        </div>



    </div>



    <!-- Floating Button -->

    <button 
    class="tari-chat-button"
    onclick="toggleTariChat()">

        🤖

    </button>


</div>