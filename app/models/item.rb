class Item < ActiveRecord::Base
  belongs_to :diagram

  validates :diagram, presence: true
end
