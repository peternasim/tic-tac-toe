<?php
session_start();
print_r($_POST);
  $win='NULL';
 $lo='NULL';
 $draw='NULL';
 if($_POST['winner']=='o')
    $win="'1'";
  elseif($_POST['winner']=='x')
    $lo="'1'";
  else
    $draw="'1'";
 $pdo = new PDO('mysql:host=localhost;dbname=tic', 'root', '');
 $pdo->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING );
 $query="INSERT INTO games (username, enemy,`1`,`2`,`3`,`4`,`5`,`6`,`7`,`8`,`9`,won,lost,draw)
    VALUES ('"
    .$_SESSION['username']."', 'KI','"
    .$_POST['cell1']."', '"
    .$_POST['cell2']."', '"
    .$_POST['cell3']."', '"
    .$_POST['cell4']."', '"
    .$_POST['cell5']."', '"
    .$_POST['cell6']."', '"
    .$_POST['cell7']."', '"
    .$_POST['cell8']."', '"
    .$_POST['cell9']."', "
    .$win.", "
    .$lo.", "
    .$draw.");";
 $stm=$pdo->prepare($query);

 $stm->execute();

//
 // print_r($stm->errorInfo());
 ?>
