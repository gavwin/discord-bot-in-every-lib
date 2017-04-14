require 'discordrb'

bot = Discordrb::Bot.new token: 'token', client_id: id

bot.message(content: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run
