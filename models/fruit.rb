class Fruits_score
  attr_accessor :name, :apple, :grape, :lime, :orange
  def initialize
    self.apple  = 0
    self.grape  = 0
    self.lime   = 0
    self.orange = 0
  end
  def apple_point
    self.apple += 1
  end
  def grape_point
    self.grape += 1
  end
  def lime_point
    self.lime += 1
  end
  def orange_point
    self.orange += 1
  end
end
