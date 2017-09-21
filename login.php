<?php
session_start();
if(isset($_POST['username'])){
  $pdo = new PDO('mysql:host=localhost;dbname=tic', 'root', '');

  $sql = "SELECT * FROM users WHERE userame = '".$_POST['username']."' and password='".$_POST['password']."'";

  foreach ($pdo->query($sql) as $row) {
    if(!empty($row)){
      $_SESSION['username']=$_POST['username'];
      $_SESSION['password']=$_POST['password'];
      header("Location: game.php");
      die();
    }
    global $falseUser;
    break;
  }
  $falseUser= 'Falscher Benutzername oder passwort';
}
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <div class="container">
      <img src="img/Games.png" alt="game">


    <div class="login-box">
      <div class="login-box-header">
        Willkommen, bitte melde dich an
      </div>
      <form action="" method="post">
      <label for="benutzername">Benutzername</label>
      <input type="text" name="username" value="">
      <label for="password">Password</label>
      <input type="password" name="password" value="">
      <button type="submit" name="button">Anmelden</button>
      <?php
        if(isset($falseUser)){
          echo '<p style="color:darkred;">'.$falseUser.'</p>';
        }
       ?>
        <a href="neue spieler.html" class="link">Neu hier Registiere dich jetzt!</a>
    </form>
    </div>
    </div>
  </body>
</html>
