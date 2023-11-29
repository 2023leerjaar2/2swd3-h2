<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Recepten-toevoegen.css">
    <title>Recepten toevoegen</title>
</head>
<body>
 
    <a href="Recepten.php">Recepten</a>
    <a href="AdminAccounts.php">Accounts</a>
 
    <?php
    require_once 'dbconnect.php';

    // Controleer of het formulier is ingediend en vereiste velden niet leeg zijn
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit']) && isset($_FILES["boek_img"]) && !empty($_POST['boek_naam']) && !empty($_POST['boek_prijs']) && !empty($_POST['boek_recepten'])) {
        $uploadDir = __DIR__ . "/uploads/";
        $targetFile = $uploadDir . basename($_FILES["boek_img"]["name"]);

        // Check if file is an actual image
        $check = getimagesize($_FILES["boek_img"]["tmp_name"]);
        if ($check === false) {
            echo "Bestand is geen afbeelding.";
        } else {
            // Ensure the 'uploads' directory exists
            if (!is_dir($uploadDir)) {
                mkdir($uploadDir, 0777, true);
            }

            // Move the uploaded file to the destination
            if (move_uploaded_file($_FILES["boek_img"]["tmp_name"], $targetFile)) {
                echo "Het bestand " . htmlspecialchars(basename($_FILES["boek_img"]["name"])) . " is geüpload.";

                // Ontvang de overige ingevoerde gegevens
                $boek_naam = $_POST['boek_naam'];
                $boek_prijs = $_POST['boek_prijs'];
                $boek_recepten = $_POST['boek_recepten'];

                // Voeg de gegevens toe aan de database
                $filename = basename($_FILES["boek_img"]["name"]);
                $conn->query("INSERT INTO recepteboeken (Boek_naam, Boek_prijs, Boek_recepten, Boek_img) VALUES ('$boek_naam', '$boek_prijs', '$boek_recepten', '$filename')");
                echo " Receptenboek toegevoegd aan de database.";
            } else {
                echo "Sorry, er was een probleem met het uploaden van je bestand.";
            }
        }
    }
    ?>
    
    <!-- Formulier om een nieuw receptenboek toe te voegen -->
    <form action="" method="post" enctype="multipart/form-data">
        <label for="boek_naam">Naam van het receptenboek:</label>
        <input type="text" name="boek_naam" required><br>

        <label for="boek_prijs">Prijs:</label>
        <input type="text" name="boek_prijs" required><br>

        <label for="boek_recepten">Recepten:</label>
        <textarea name="boek_recepten" rows="4" required></textarea><br>

        <label for="boek_img">Afbeelding:</label>
        <input type="file" name="boek_img" id="boek_img" required><br>

        <input type="submit" name="submit" value="Toevoegen aan de database">
    </form>

</body>
</html>
