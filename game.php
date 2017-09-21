<?php
include('./getGameData.php');
if(!isset($_SESSION['username'])){
    header("Location: login.php");
}
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="./game.css" />
    <script type="text/javascript" src="./jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="./js/ajax.js"></script>
    <script type="text/javascript" src="./js/script.js"></script>
    <title></title>

  </head>
  <body>
  <div class="header">
    <div style="overflow:hidden">
    <div class="logo" style="float:left;width:30%">
    <img src="img/Games.png" alt="game" height="30px" width="144px" >
    </div>
    <div class="points" style="float:right;width:68%">
      <p>Dein Punktestand: </p>
      <p>Siege: <?= getWonGames()?></p>
      <p>Niederlagen: <?= getLostGames()?></p>
      <p>Remi: <?= getDrawGames()?></p>
      <p><a href="#">Zeige Spielergebnisse</a></p>
    </div>
  </div>
  </div>


  <div class="header-menu">
    <div class="menu-contain">
      <div style="overflow:hidden">

    <div style="float:left">
      <img src="img/Oval_big.png" alt="game"  height="34px" width="34px" />
      <p>
      <?= $_SESSION['username']?>
      </p>
    </div>
    <div style="float:right">

    <img src="img/cross_big.png" alt="game" height="34px" width="34px" />
  <p>
Gegner
  </p>
    </div>
  </div>
  </div>
  </div>

  <div class="game-container">
      <div id="cell-1" data-cell="1" data-taken="0" data-player="0" class="game-cell"></div>
      <div id="cell-2" data-cell="2" data-taken="0" data-player="0" class="game-cell"></div>
      <div id="cell-3" data-cell="3" data-taken="0" data-player="0" class="game-cell"></div>
      <div id="cell-4" data-cell="4" data-taken="0" data-player="0" class="game-cell"></div>
      <div id="cell-5" data-cell="5" data-taken="0" data-player="0" class="game-cell"></div>
      <div id="cell-6" data-cell="6" data-taken="0" data-player="0" class="game-cell"></div>
      <div id="cell-7" data-cell="7" data-taken="0" data-player="0" class="game-cell"></div>
      <div id="cell-8" data-cell="8" data-taken="0" data-player="0" class="game-cell"></div>
      <div id="cell-9" data-cell="9" data-taken="0" data-player="0" class="game-cell"></div>
  </div>

  <p class="winner-text" id="winner" style="">Sieg!</p>
  <p class="winner-text" id="looser" style="">Du hast verloren!</p>
  <button type="button" class="new-game-button" name="button">Neues Sipiel</button>
  </body>
</html>
