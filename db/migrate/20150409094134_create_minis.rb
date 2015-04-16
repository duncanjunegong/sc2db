class CreateMinis < ActiveRecord::Migration
  def change
    create_table :minis do |t|
      t.string :name, default: "mini_"
      t.integer :synstart
      t.integer :synend
      t.text :sequence
      t.integer :ctype
      t.text :introduction
      t.boolean :latest_flag, default: true

      t.timestamps null: false
    end
  end
end
