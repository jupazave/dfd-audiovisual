class Item < ActiveRecord::Base
  belongs_to(:diagram)

  #validates :diagram, presence: true

  has_one :parent_item, :class_name => "Item", :foreign_key => :parent_id #papa
  belongs_to :parent_item, :class_name => "Item", :foreign_key => :parent_id

  has_one :right_item, :class_name => "Item", :foreign_key => :right_id #true
  belongs_to :right_item, :class_name => "Item", :foreign_key => :right_id

  has_one :left_item, :class_name => "Item", :foreign_key => :left_id #false
  belongs_to :left_item, :class_name => "Item", :foreign_key => :left_id

  include RankedModel
  ranks :position
end
