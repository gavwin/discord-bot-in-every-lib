def handle_event({event, _payload}, state) do
  IO.puts "Received Event: #{event}"
  {:ok, state}
end

def handle_event({:message_create, payload}, state) do
  # unknown
  {:ok, state}
end


{:ok, bot_client } = DiscordEx.Client.start_link(%{
	token: <token>,
	handler: YourBotHandler
})
