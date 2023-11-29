<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="recepten.css">
    <title>Recepten</title>
</head>
<body>
 
<div>
    <a href="Recepten.php">Recepten</a>
    <a href="AdminAccounts.php">Accounts</a>
</div>
    <?php
    require_once 'dbconnect.php';
    try {
        $sql = "SELECT * FROM recepteboeken";
        $result = $conn->query($sql);
        $boeken = $result->fetch_all(MYSQLI_ASSOC);
    } catch (Exception $e) {
        echo "Er is iets fout gegaan met ophalen.";
    }
    ?>
 
    <?php foreach ($boeken as $boek) { ?>
        <div class="recipe-container">
            <p>
                <?php echo $boek['Boek_naam'] . '<br>'; ?>
                <?php if (!empty($boek['Boek_img'])) : ?>
                    <img src="uploads/<?php echo $boek['Boek_img']; ?>" alt="<?php echo $boek['Boek_naam']; ?>" width="150"><br>
                <?php else : ?>
                    Geen afbeelding beschikbaar<br>
                <?php endif; ?>
                <?php echo $boek['Boek_prijs'] . '<br>'; ?>
                <button>Meer informatie</button>
            </p>
        </div>
    <?php } ?>
   
</body>
</html>
