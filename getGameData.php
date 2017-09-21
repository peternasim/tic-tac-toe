<?php
session_start();

function getWonGames(){
  $pdo = new PDO('mysql:host=localhost;dbname=tic', 'root', '');
  $query="SELECT count(won) as won FROM games WHERE username='".$_SESSION['username']."' order by username";
  $stm=$pdo->prepare($query);
  $stm->execute();
  return $stm->fetch()['won'];
}

function getLostGames(){
  $pdo = new PDO('mysql:host=localhost;dbname=tic', 'root', '');
  $query="SELECT count(lost) as lost FROM games WHERE username='".$_SESSION['username']."' order by username";
  $stm=$pdo->prepare($query);
  $stm->execute();
  return $stm->fetch()['lost'];
}

function getDrawGames(){
  $pdo = new PDO('mysql:host=localhost;dbname=tic', 'root', '');
  $query="SELECT count(draw) as draw FROM games WHERE username='".$_SESSION['username']."' order by username";
  $stm=$pdo->prepare($query);
  $stm->execute();
  return $stm->fetch()['draw'];
}
