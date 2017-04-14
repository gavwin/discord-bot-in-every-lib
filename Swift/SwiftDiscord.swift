import SwiftDiscord

class Bot: DiscordClientDelegate {
  let client: DiscordClient

  init() {
    self.client = DiscordClient(token: "Bot myjwt.from.discord", delegate: self, configuration: [.log(.info)])
  }

  func client(_ client: DiscordClient, didCreateMessage message: DiscordMessage) {
    if message.content == "ping" {
      message.channel?.send("Pong!")
    }
  }

  func connect() {
    self.client.connect()
  }
}

let bot = Bot()
bot.connect()
```
