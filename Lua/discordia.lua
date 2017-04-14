local discordia = require('discordia')
local client = discordia.Client()

client:on('messageCreate', function(message)
	if message.content == 'ping' then
		message.channel:sendMessage('Pong!')
	end
end)

client:run('token')
