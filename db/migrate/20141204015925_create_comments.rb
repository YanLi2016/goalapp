class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :name
      t.date :published

      t.timestamps
    end
  end
end
