<?php

include __DIR__.'/vendor/autoload.php';

use RestCord\DiscordClient;

$discord = new DiscordClient(['token' => 'token']);

var_dump($discord->channel->createMessage(['channel.id' => channelid, 'content' => 'Pong!']));
