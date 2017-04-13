import 'package:discord/discord.dart' as discord;
import 'package:discord/discord_vm.dart' as discord;

void main() {
  discord.configureDiscordForVM();
  var bot = new discord.Client("token");
  
  bot.onMessage.listen((e) {
    var m = e.message;

    if (m.content == "!ping") {
      m.channel.sendMessage("Pong!");
    }
  });
}
