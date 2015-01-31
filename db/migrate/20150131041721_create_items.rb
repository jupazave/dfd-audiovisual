class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :text
      t.text :description
      t.integer :diagram_id
      t.string :type_action
      t.string :position
      t.integer :parent_id, :null => true, :index => true
      t.integer :true_id, :null => true, :index => true
      t.integer :false_id, :null => true, :index => true

      t.timestamps
    end
  end
end
