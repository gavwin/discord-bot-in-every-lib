const Discord = require('discord.io');
const client = new Discord.Client({ token: "", autorun: true });

client.on('message', function(channelID, message, event) {
    if (message === "ping") {
        client.sendMessage({
            to: channelID,
            message: "pong"
        });
    }
});
