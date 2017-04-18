public class Main {
  
  public static void main(String[] args) {
    IDiscordClient client = Example.getClient(args[0], true);
    EventDispatcher dispatcher = client.getDispatcher();
    dispatcher.registerListener(new AnnotationListener());
  }
}
