class CreateChrs < ActiveRecord::Migration
  def change
    create_table :chrs do |t|
      t.string :name, default: "chr_"
      t.integer :ctype
      t.integer :length
      t.integer :manipulation
      t.integer :version
      t.boolean :latest_flag, default: true
      t.text :introduction

      t.index :name

      t.timestamps null: false
    end
  end
end
