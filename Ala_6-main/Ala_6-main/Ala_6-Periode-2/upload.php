<?php
require_once 'dbconnect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_FILES["fileToUpload"])) {
    $uploadDir = __DIR__ . "/uploads/";
    $targetFile = $uploadDir . basename($_FILES["fileToUpload"]["name"]);

    // Check if file is an actual image
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if ($check === false) {
        echo "Bestand is geen afbeelding.";
    } else {
        // Ensure the 'uploads' directory exists
        if (!is_dir($uploadDir)) {
            mkdir($uploadDir, 0777, true);
        }

        // Move the uploaded file to the destination
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $targetFile)) {
            echo "Het bestand " . htmlspecialchars(basename($_FILES["fileToUpload"]["name"])) . " is geüpload.";

            // Voeg de bestandsnaam toe aan de database
            $filename = basename($_FILES["fileToUpload"]["name"]);
            $conn->query("UPDATE recepteboeken SET Boek_img = '$filename' WHERE Boek_id = 1"); // Vervang '1' door het juiste Boek_id
        } else {
            echo "Sorry, er was een probleem met het uploaden van je bestand.";
        }
    }
}
?>
