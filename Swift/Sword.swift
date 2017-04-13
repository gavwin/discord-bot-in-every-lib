import Sword

let bot = Sword(token: "token")

bot.on(.messageCreate) { data in
  let msg = data[0] as! Message
  if msg.content == "!ping" {
    msg.reply(with: "Pong!")
  }
}

bot.connect()
