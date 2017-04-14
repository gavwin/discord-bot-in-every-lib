defmodule MyBot do
  use Application
  alias Alchemy.Client


  defmodule Commands do
    use Alchemy.Cogs

    Cogs.def ping do
      Cogs.say "Pong!"
    end
  end


  def start(_type, _args) do
    run = Client.start("token")
    use Commands
    run
  end
end
