#!/usr/bin/env php

<?php

if (file_exists(__DIR__.'/../../autoload.php')) {
    require __DIR__.'/../../autoload.php';
} else {
    require __DIR__.'/vendor/autoload.php';
}

use Symfony\Component\Console\Application;
use Nerdial\Standards\Console\TagCommand;
use Nerdial\Standards\Console\InitializationCommand;
use Nerdial\Standards\Console\GenerateChangelogCommand;

$app = new Application('Console App', 'v1.0.0');
$app->add(new TagCommand());
$app->add(new InitializationCommand());
$app->add(new GenerateChangelogCommand());
$app->run();
