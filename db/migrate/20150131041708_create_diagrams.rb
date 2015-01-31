class CreateDiagrams < ActiveRecord::Migration
  def change
    create_table :diagrams do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
