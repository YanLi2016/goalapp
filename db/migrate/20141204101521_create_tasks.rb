class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :done
      t.belongs_to :mygoal, index: true

      t.timestamps
    end
  end
end
