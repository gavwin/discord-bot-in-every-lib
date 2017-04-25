using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DSharpPlus;
using DSharpPlus.Commands;

namespace DspBot
{
    class Program
    {
        static void Main(string[] args)
        {
            Run().GetAwaiter().GetResult();
        }

        public static async Task Run()
        {
            var discord = new DiscordClient(new DiscordConfig
            {
                AutoReconnect = true,
                DiscordBranch = Branch.Stable,
                LargeThreshold = 250,
                LogLevel = LogLevel.Unnecessary,
                Token = "insert your token here",
                TokenType = TokenType.Bot,
                UseInternalLogHandler = false
            });

            discord.MessageCreated += async e =>
            {
                if (e.Message.Content.ToLower() == "ping")
                    await e.Message.Respond("Pong!");
            };

            await discord.Connect();

            await Task.Delay(-1);
        }
    }
}

Contact GitHub API Training Shop Blog About
