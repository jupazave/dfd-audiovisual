class Diagram < ActiveRecord::Base
  has_many :items

  before_save :create_nodes


  def create_nodes

    a = Item.new
    a.name= "Start"
    a.position= "start"

    b = Item.new
    b.name= "End"
    b.position= "end"

    self.items = [a, b]
    
  end
end
