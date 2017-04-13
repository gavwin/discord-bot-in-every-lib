const Discord = require('nodcord');
const client = new Discord();

client.on('message_create', (msg) =>
    if (msg.content === 'ping') {
        //unknown
    }
);

bot.login({ token: '' });
