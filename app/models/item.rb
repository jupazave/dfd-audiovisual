class Item < ActiveRecord::Base
  belongs_to :diagram

  enum type_action: { activity: "activity", option: "option" }

  enum position: { start: "start", center: "center", end: "end" }

  belongs_to :true_side, 
    :class_name => "Item", 
    :foreign_key => :true_id

  belongs_to :parent, 
    :class_name => "Item", 
    :foreign_key => :parent_id

  belongs_to :false, 
    :class_name => "Item", 
    :foreign_key => :false_id


end
