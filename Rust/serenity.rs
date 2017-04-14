extern crate serenity;

use serenity::client::Client;
use std::env;

fn main() {
    let mut client = Client::login_bot(&env::var("token").expect("token"));
    client.with_framework(|f| f
        .on("ping", ping));

    let _ = client.start();
}

command!(ping(_context, message) {
    let _ = message.reply("Pong!");
});
