require "../src/discordcr"

client = Discord::Client.new(token: "", client_id: id)

client.on_message_create do |payload|
  if payload.content.starts_with? "ping"
    client.create_message(payload.channel_id, "Pong!")
  end
end

client.run
