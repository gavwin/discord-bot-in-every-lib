import net.dv8tion.jda.core.events.message.MessageReceivedEvent;
import net.dv8tion.jda.core.hooks.ListenerAdapter;
 
public class BotListener extends ListenerAdapter {
 
    @Override
    public void onMessageReceived(MessageReceivedEvent e) {
        if (e.getMessage().getRawContent().equalsIgnoreCase("ping")) {
            e.getChannel().sendMessage("Pong!").queue();
        }
    }
 
}
