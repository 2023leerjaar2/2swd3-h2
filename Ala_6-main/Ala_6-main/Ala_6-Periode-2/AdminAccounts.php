<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accounts</title>
</head>
<body>
 
    <a href="Recepten.php">Recepten</a>
    <a href="AdminAccounts.php">Accounts</a>
 
    <?php
    require_once 'dbconnect.php';
    try {
        $sql = "SELECT * FROM admin";
        $result = $conn->query($sql);
        $admins = $result->fetch_all(MYSQLI_ASSOC);
    } catch (Exception $e) {
        echo "Er is iets fout gegaan met ophalen.";
    }
    ?>
 
    <?php foreach ($admins as $admin) { ?>
        <p><?php echo $admin['id'] . ' - ' . $admin['Naam'] . ' - ' . $admin['Achternaam'] . ' - ' . $admin['e-mail'] . ' - ' . $admin['Wachtwoord']; ?></p>
    <?php } ?>
</body>
</html>