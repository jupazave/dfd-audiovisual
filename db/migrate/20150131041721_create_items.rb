class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.boolean :instruction
      t.text :description
      t.boolean :printer
      t.string :allocator
      t.string :assigned_to
      t.integer :diagram_id

      t.timestamps
    end
  end
end
