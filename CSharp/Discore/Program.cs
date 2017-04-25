using Discore;
using Discore.WebSocket;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace DiscorePingPong
{
    public class Program
    {
        public static void Main(string[] args)
        {
            Program program = new Program();
            program.Run().Wait();
        }
		
        public async Task Run()
        {
            DiscordBotUserToken token = new DiscordBotUserToken("<bot user token goes here>");

            DiscordWebSocketApplication app = new DiscordWebSocketApplication(token);

            shard.Gateway.OnMessageCreated += Gateway_OnMessageCreated;
        }

        private static async void Gateway_OnMessageCreated(object sender, MessageEventArgs e)
        {
            Shard shard = e.Shard;
            DiscordMessage message = e.Message;

            if (message.Content == "ping")
            {
                ITextChannel textChannel = (ITextChannel)shard.Cache.Channels.Get(message.ChannelId);

                try
                {
                    await textChannel.CreateMessage($"Pong!");
                }
                catch (Exception) {  /* Message failed to send... :( */ }
            }
        }
    }
}
