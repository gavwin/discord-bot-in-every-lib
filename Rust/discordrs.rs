extern crate discord;

use discord::Discord;
use discord::model::Event;
use std::env;

fn main() {
	let discord = Discord::from_bot_token(
		&env::var("token").expect("Expected token"),
	).expect("login failed");

	let (mut connection, _) = discord.connect().expect("connect failed");
	println!("Ready.");
	loop {
		match connection.recv_event() {
			Ok(Event::MessageCreate(message)) => {
				println!("{} says: {}", message.author.name, message.content);
				if message.content == "ping" {
					let _ = discord.send_message(message.channel_id, "Pong!", "", false);
				} 
			}
			Ok(_) => {}
			Err(discord::Error::Closed(code, body)) => {
				println!("Gateway closed on us with code {:?}: {}", code, body);
				break
			}
			Err(err) => println!("Receive error: {:?}", err)
		}
	}
}
