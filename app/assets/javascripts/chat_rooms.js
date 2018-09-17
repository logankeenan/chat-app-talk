setInterval(async () => {
    let response = await fetch(window.location);
    let data = await response.json();

    let messagesHtmlstring = data.messages.reduce((templateString, message) => {
        templateString += `<div class="message">${message.message}</div>`;

        return templateString;
    }, '');

    document.getElementById('messages').innerHTML = messagesHtmlstring;
}, 2000);