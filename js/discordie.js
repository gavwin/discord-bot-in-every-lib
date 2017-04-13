const Discordie = require('discordie');
const client = new Discordie();

client.connect({ token: "" });

client.Dispatcher.on("MESSAGE_CREATE", e => {
  if (e.message.content == 'ping')
    e.message.channel.sendMessage('Pong!');
});
