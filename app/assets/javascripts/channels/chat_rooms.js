App.chat_rooms = App.cable.subscriptions.create({
    channel: "ChatRoomsChannel",
    chat_room_id: window.location.pathname.replace('/chat_rooms/', "")
    }, {
        connected(connected) {

        },
        // Called when the subscription is ready for use on the server

        disconnected() {
        },
        // Called when the subscription has been terminated by the server

        received(data) {
            var dataParsed = JSON.parse(data);
            var messageElement = document.createElement('div');
            messageElement.className = "message";
            messageElement.innerText = `${dataParsed.user.email} says ${dataParsed.message}`;

            var messagesElement = document.getElementById("messages");
            messagesElement.appendChild(messageElement);

            document.getElementById("message_message").value = "";
        }
    }
);