<?php
    require '../db_operations.php';

    $full_name = filter_input(INPUT_POST, 'name');
    $email = filter_input(INPUT_POST, 'email');
    $subject = filter_input(INPUT_POST, 'subject');
    $message = filter_input(INPUT_POST, 'message'); 

    if($full_name && $email && $subject && $message) {
        $db_ops = new DBOperations();
        $db_ops->createContacts([$full_name, $email, $subject, $message]);
        header('Location: index.php');
    }   

