$(document).ready(function() {
    $.post("/token/generate", {page: window.location.pathname}, function(data) {
        Twilio.Device.setup(data.token);
    });
});

function call(phoneNumber) {
    var params = {"Number": phoneNumber};
    Twilio.Device.connect(params);
}

function hangup() {
    Twilio.Device.disconnectAll();
}

Twilio.Device.ready(function (device) {
    $("#log").text("Ready");
});

/* Report any errors on the screen */
Twilio.Device.error(function (error) {
    $("#log").text("Error: " + error.message);
});

Twilio.Device.connect(function (conn) {
    $("#log").text("Successfully established call");
});

Twilio.Device.disconnect(function (conn) {
    $("#log").text("Call ended");
});
