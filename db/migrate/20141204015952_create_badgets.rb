class CreateBadgets < ActiveRecord::Migration
  def change
    create_table :badgets do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
