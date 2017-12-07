<?php

/******************************************************************
 * Requirements
 ******************************************************************/
require_once 'libraries/swift/lib/swift_required.php';

/******************************************************************
 * Constants
 ******************************************************************/
define('MESSAGE_SUBJECT', 'An Access2018 Message');
define('MESSAGE_FROM_EMAIL', 'john@doe.com');
define('MESSAGE_FROM_NAME', 'John Doe');
define('MESSAGE_TO_EMAIL', 'tomavey@fgbc.org');

define('TRANSPORT_SERVER', 'mail.access2017.com');
define('TRANSPORT_PORT', 25);
define('TRANSPORT_USERNAME', 'tomavey@access2017.com');
define('TRANSPORT_PASSWORD', 'j11itbwtw');

/******************************************************************
 * Configure transport
 ******************************************************************/
$transport = Swift_SmtpTransport::newInstance(TRANSPORT_SERVER, TRANSPORT_PORT)
    ->setUsername(TRANSPORT_USERNAME)
    ->setPassword(TRANSPORT_PASSWORD);
$mailer = Swift_Mailer::newInstance($transport);

/******************************************************************
 * Send email
 ******************************************************************/
if (!empty($_POST['email']) && !empty($_POST['name']) && !empty($_POST['message'])) {
    $body = sprintf("Email: %s \nName: %s\nBody: %s", $_POST['email'], $_POST['name'], $_POST['message']);

    $message = Swift_Message::newInstance()
        ->setSubject(MESSAGE_SUBJECT)
        ->setFrom(array(MESSAGE_FROM_EMAIL => MESSAGE_FROM_NAME))
        ->setTo(array(MESSAGE_TO_EMAIL))
        ->setBody($body);

    $mailer->send($message);
}