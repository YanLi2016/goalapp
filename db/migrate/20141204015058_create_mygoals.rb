class CreateMygoals < ActiveRecord::Migration
  def change
    create_table :mygoals do |t|
      t.string :name
      t.text :description
      t.date :start
      t.date :finish
      t.integer :days

      t.timestamps
    end
  end
end
