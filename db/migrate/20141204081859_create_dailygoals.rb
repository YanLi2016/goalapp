class CreateDailygoals < ActiveRecord::Migration
  def change
    create_table :dailygoals do |t|
      t.boolean :done
      t.string :description
      t.text :comment
      t.integer :mygoal_id
      t.date :date

      t.timestamps
    end
  end
end
