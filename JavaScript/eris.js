const Eris = require("eris");
const client = new Eris("token");

client.on("messageCreate", (msg) => {
    if (msg.content === "ping") {
        client.createMessage(msg.channel.id, "Pong!");
    }
});

client.connect();
