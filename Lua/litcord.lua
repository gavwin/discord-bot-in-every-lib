local litcord = require('litcord')
local client = litcord('token')

client:on(
	'messageCreate',
	function(message)
			if message.content == 'ping' then
		message.channel:sendMessage('Pong!')
	end
)

litcord:run()
