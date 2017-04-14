module main;

import std.stdio,
       std.algorithm,
       std.string,
       std.format,
       std.conv,
       std.array,
       std.json,
       std.traits,
       std.process,
       core.time;

import vibe.core.core;
import vibe.http.client;
import dcad.types : DCAFile;


import dscord.core,
       dscord.util.process,
       dscord.util.emitter,
       dscord.voice.youtubedl;

import core.sys.posix.signal;
import etc.linux.memoryerror;

import dscord.util.string : camelCaseToUnderscores;

class BasicPlugin : Plugin {
  DCAFile sound;

  this() {
    super();
  }

  @Listener!(MessageCreate, EmitterOrder.AFTER)
  void onMessageCreate(MessageCreate event) {
    this.log.infof("MessageCreate: %s", event.message.content);
  }

  @Command("ping")
  void onPing(CommandEvent event) {
    event.msg.reply(format("Pong!");
  }
  

void main(string[] args) {
  static if (is(typeof(registerMemoryErrorHandler)))
      registerMemoryErrorHandler();

  if (args.length <= 1) {
    writefln("Usage: %s <token>", args[0]);
    return;
  }

  BotConfig config;
  config.token = args[1];
  Bot bot = new Bot(config, LogLevel.trace);
  bot.loadPlugin(new BasicPlugin);
  bot.run();
  runEventLoop();
  return;
}
