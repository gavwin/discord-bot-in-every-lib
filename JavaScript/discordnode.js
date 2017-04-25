const DNode = require('discord-node');
const client = new DNode('token');

client.on("messageSent", (msg) => {
    if (msg.content === "ping") {
        client.sendMessage(msg.channel.id, "Pong!");
    }
});

client.connect()
