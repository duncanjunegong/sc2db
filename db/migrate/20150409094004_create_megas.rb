class CreateMegas < ActiveRecord::Migration
  def change
    create_table :megas do |t|
      t.string :name, default: "mega_"
      t.integer :synstart
      t.integer :synend
      t.integer :marker
      t.text :introduction
      t.boolean :latest_flag, default: true

      t.index :name

      t.timestamps null: false
    end
  end
end
