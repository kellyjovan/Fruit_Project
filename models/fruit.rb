fruit = {
  :pear => { 
    :img => "http://www.clipartbest.com/cliparts/MTL/GeR/MTLGeRXac.png",
    :pun => "Choking on fruit? Call the pear-emetics."
  },
  :orange => {
    :img => "http://www.tvdance.com/fruit/orange.gif",
    :pun => "Orange You Glad To See Me?"
  },
  :peach => {
    :img => "http://www.clker.com/cliparts/i/U/T/p/F/x/orange-hi.png",
    :pun => "Fruit growers who ignore frost warnings are a bit like fascists. They don’t believe in freeze peach."
  },
  :lime => {
    :img => "http://2.bp.blogspot.com/-0gWLONYqsjc/T41b1xD31KI/AAAAAAAAB18/9NXti9aRL2A/s320/Lime.png",
    :pun => "Put a citrus fruit on top of your drink: It will taste sub lime."
  }
}
random = rand(1..fruit.length)
if random == 1
  @chosen_fruit = fruit[:pear]
elsif random == 2
  @chosen_fruit = fruit[:orange]
elsif random == 3
  @chosen_fruit = fruit[:peach]
elsif random == 4
  @chosen_fruit = fruit[:lime]
end
@fruit_img = @chosen_fruit[:img]
@fruit_pun = @chosen_fruit[:pun]   