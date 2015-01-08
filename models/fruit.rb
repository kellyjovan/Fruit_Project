@fruit = {
  :pear => { 
    :img => "http://www.clipartbest.com/cliparts/MTL/GeR/MTLGeRXac.png",
    :pun => "Choking on fruit? Call the pear-emetics.",
    :background_color => ""
  },
  :orange => {
    :img => "http://www.tvdance.com/fruit/orange.gif",
    :pun => "Orange You Glad To See Me?",
    :background_color => ""
  },
  :peach => {
    :img => "http://www.clker.com/cliparts/i/U/T/p/F/x/orange-hi.png",
    :pun => "Fruit growers who ignore frost warnings are a bit like fascists. They don’t believe in freeze peach.",
    :background_color => ""
  },
  :lime => {
    :img => "http://2.bp.blogspot.com/-0gWLONYqsjc/T41b1xD31KI/AAAAAAAAB18/9NXti9aRL2A/s320/Lime.png",
    :pun => "Put a citrus fruit on top of your drink: It will taste sub lime.",
    :background_color => ""
  },
  :apple => {
    :img => "",
    :pun => "",
    :background_color => ""
  },
  :grapes => {
    :img => "",
    :pun => "You have an grape personality",
    :background_color => ""
  }
}

@apple = 0;
@grape = 0;
@lime = 0;
@orange = 0;

random = rand(1..fruit.length)
if random == 1
  @chosen_fruit = fruit[:pear]
elsif random == 2
  @chosen_fruit = fruit[:orange]
elsif random == 3
  @chosen_fruit = fruit[:peach]
elsif random == 4
  @chosen_fruit = fruit[:lime]
elsif random == 5
  @chosen_fruit = fruit[:apple]
elsif random == 6
  @chosen_fruit = fruit[:grapes]
end
@fruit_img = @chosen_fruit[:img]
@fruit_pun = @chosen_fruit[:pun]   

