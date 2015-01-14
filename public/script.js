var fruits = {
  "apple" : {
    "color" : "#FF1919",
    "img"   : "http://www.clker.com/cliparts/1/b/6/8/11949841511552878171apple_bitten_dan_gerhard_01.svg.hi.png",
    "pun"   : "Bought an apple, took a byte out of it."
  },
  "grape" : {
    "color" : "#bb00bb",
    "img"   : "http://www.freeclipartpics.com/images/grape-purple.gif",
    "pun"   : "You have an grape personality"
  },
  "lime"  : {
    "color" : "#4eff4e",
    "img"   : "http://2.bp.blogspot.com/-0gWLONYqsjc/T41b1xD31KI/AAAAAAAAB18/9NXti9aRL2A/s320/Lime.png",
    "pun"   : "Put a citrus fruit on top of your drink: It will taste sub lime."
  },
  "orange": {
    "color" : "#ffba3b",
    "img"   : "http://www.clker.com/cliparts/i/U/T/p/F/x/orange-md.png",
    "pun"   : "Orange You Glad To See Me?" 
  },
  "pear":   {
    "color" : "#ffff62",
    "img"   : "http://www.clipartbest.com/cliparts/MTL/GeR/MTLGeRXac.png",
    "pun"   : "Choking on fruit? Call the pear-emetics."
  },
  "peach" : {
    "color" : "#f5e69d",
    "img"   : "http://www.clker.com/cliparts/b/e/Y/B/j/b/peach-md.png",
    "pun"   : "Fruit growers who ignore frost warnings are a bit like fascists. They don’t believe in freeze peach."
  }
};
var fruit_list = ["apple", "grape", "lime", "orange", "pear", "peach"];
$(document).ready(function(){
  var rand = Math.floor(Math.random()*fruit_list.length),
      randFruit = fruits[fruit_list[rand]],
      pun = randFruit["pun"],
      color = randFruit["color"],
      img = randFruit["img"];

  var fruit_img  = $('#fruit').attr("src", img);
  $('#pun').text(pun);
  $('.fruit').css('background-color', color);
});