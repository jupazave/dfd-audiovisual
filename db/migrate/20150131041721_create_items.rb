class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :text
      t.text :description
      t.integer :row_order
      t.integer :diagram_id

      t.timestamps
    end
  end
end
