<?php
//  download file function
    function downloadFile($filePath) {
        $filePath = filter_var($filePath, FILTER_SANITIZE_URL);
        if(file_exists($filePath)) {
            // $fileExtension = pathinfo($filePath, PATHINFO_EXTENSION);
            // $contentType = "";

            // var_dump($fileExtension);
            // // switch($fileExtension) {

            // // }

            // die();
            header('Content-Type: application/octet-stream');
            header('Content-Transfer-Encoding: binary');
            header('Content-Disposition: attachment; filename='.basename($filePath));
            header('Content-Length: '.filesize($filePath));
            header('Content-Description: File Transfer');
            readfile($filePath);
        } else {
            throw new Exception("Le fichier n'existe pas");
        }
    }

//  Download treatment
    require 'db_operations.php';

    $db_ops = new DBOperations();
    // $file_id = filter_input(INPUT_GET, 'file', FILTER_SANITIZE_NUMBER_INT);
    // $session_id = filter_input(INPUT_GET, 'sId', FILTER_SANITIZE_NUMBER_INT);

    $data = filter_input(INPUT_GET, 'pass');

    $file_id = substr($data, 3, 1);
    $session_id = substr($data,4, 1);
    $fileType = substr($data,0,3);


    if ($fileType == "doc")
        $file_path = $db_ops->getPresentationFile($file_id, $session_id);
    if ($fileType == "pic")
        $file_path = $db_ops->getPictureFile($file_id, $session_id);
    if ($fileType == "rap")
        $file_path = $db_ops->getRapportFile($session_id);

    downloadFile(__DIR__.'\\'.$file_path);