import javax.security.auth.login.LoginException;

import net.dv8tion.jda.core.AccountType;
import net.dv8tion.jda.core.JDA;
import net.dv8tion.jda.core.JDABuilder;
import net.dv8tion.jda.core.exceptions.RateLimitedException;
 
public class Bot {
 
    public static JDA jda;
 
    public static final String token = "token";
 
    public static void main(String[] args) {
 
        try {
            jda = new JDABuilder(AccountType.BOT)
            		.addListener(new BotListener())
            		.setToken(token)
            		.buildBlocking();
        } catch (LoginException | IllegalArgumentException | InterruptedException | RateLimitedException e) {
            e.printStackTrace();
        }
 
    }
    
}
