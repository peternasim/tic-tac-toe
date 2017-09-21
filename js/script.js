var isWon=false;
var winner="";
$(document).ready(function(){
  $('.new-game-button').click(function(){
    location.reload();
  })
  $('.winner-text').hide();
  $('.new-game-button').hide();
  $('.game-cell').click(function(){
    if(!isWon){
      if($(this).data('taken')==0){
        $(this).addClass('game-cell-o');
        $(this).data('taken','1');
        $(this).data('player','o');
        if(testIfDraw()){
          saveGame()
          $('.new-game-button').show();
        }
        if(testIfWon('o')){
          saveGame();
        }else{
        enemyPlays();
      }
    }
    }else{

    }
  })

})

function enemyPlays(){
  $('.game-cell').each(function(value){
    if($(this).data('taken')==0){
        $(this).addClass('game-cell-x');
        $(this).data('taken','1');
        $(this).data('player','x');
        if(testIfWon('x')){
          saveGame();
        }
        return false;
      }
  })
}

function testIfWon(player){
  var array=[];
  this.winner=player;
  $('.game-cell').each(function(value){
    if($(this).data('player')==player){
      array.push($(this).data('cell'));
    }
  })
  var won=testingCombinations(array);
  this.isWon=won;
  if(won){
    if(player=='o')
      $('#winner').show();
    else
      $('#looser').show();
    $('.new-game-button').show();
  }
  return won;
}

function testIfDraw(){
    var temp=true;
    $('.game-cell').each(function(value){
      if($(this).data('taken')==0){
        temp=false;
      }
    })
    temp != testIfWon('o');
    temp != testIfWon('x');
    console.log('draw',temp);
    return temp;
}

function testingCombinations(array){
      return (array.includes(1) & array.includes(2) & array.includes(3)) ||
       (array.includes(4) & array.includes(5) & array.includes(6)) ||
       (array.includes(7) & array.includes(8) & array.includes(9)) ||
       (array.includes(2) & array.includes(5) & array.includes(8)) ||
       (array.includes(3) & array.includes(6) & array.includes(9)) ||
       (array.includes(3) & array.includes(5) & array.includes(7)) ||
       (array.includes(1) & array.includes(5) & array.includes(9))
      ;
}


function saveGame(){
  $.ajax({
  method: "POST",
  url: "saveGames.php",
  data: {
    cell1: $("#cell-1").data('player'),
    cell2: $("#cell-2").data('player'),
    cell3: $("#cell-3").data('player'),
    cell4: $("#cell-4").data('player'),
    cell5: $("#cell-5").data('player'),
    cell6: $("#cell-6").data('player'),
    cell7: $("#cell-7").data('player'),
    cell8: $("#cell-8").data('player'),
    cell9: $("#cell-9").data('player'),
    winner: this.winner,
   }
})
  .done(function( msg ) {
    console.log(msg);
  });
}
