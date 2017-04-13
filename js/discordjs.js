const Discord = require('discord.js');
const client = new Discord.Client();

client.on('message', msg => {
    if (msg.content === 'ping') {
        msg.channel.sendMessage('Pong!');
    }
});

client.login(token);
