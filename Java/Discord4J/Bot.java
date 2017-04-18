public class Bot {

  public static IDiscordClient getClient(String token, boolean login) {
    ClientBuilder clientBuilder = new ClientBuilder();
    clientBuilder.withToken(token);
    if (login) {
      return clientBuilder.login();
    } else {
      return clientBuilder.build();
    }
  }
}
