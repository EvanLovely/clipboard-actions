<?php

	$url = shell_exec("curl https://www.googleapis.com/urlshortener/v1/url -H 'Content-Type: application/json' -d '{\"longUrl\": \"$argv[1]\"}'");
	$url = json_decode($url);
	exec("printf ".$url->id." | pbcopy");

?>