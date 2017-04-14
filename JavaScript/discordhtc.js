const Discord = require('discord.htc');
const client = new DHTC(token);

client.on('createdMessage', (msg) => {
  if (msg.content === 'ping') {
    client.makeMessage(msg.channel_id, 'Pong!');
  }
});

client.connect();
