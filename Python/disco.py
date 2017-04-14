from disco.bot import Bot, Plugin

class SimplePlugin(Plugin):
    
    @Plugin.command('ping')
    def on_ping_command(self, event):
        event.msg.reply('Pong!')
