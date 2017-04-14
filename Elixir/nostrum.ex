defmodule ExampleConsumer do
  use Nostrum.Consumer
  alias Nostrum.Api

  def start_link do
    Consumer.start_link(__MODULE__)
  end

  def handle_event({:MESSAGE_CREATE, {msg}, _ws_state}, state) do
    case msg.content do
      "ping!" ->
        Api.create_message(msg.channel_id, "Pong!")
      _ ->
        :ignore
    end

    {:ok, state}
  end
  
  def handle_event(_, state) do
    {:ok, state}
  end
end
