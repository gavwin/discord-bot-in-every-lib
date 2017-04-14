<?php

include __DIR__.'/vendor/autoload.php';

use Discord\Discord;

$discord = new Discord([
	'token' => 'token',
]);

	$discord->on('message', function ($message, $discord) {
		echo "{$message->author->username}: {$message->content}",PHP_EOL;
	});
});

$discord->run();
