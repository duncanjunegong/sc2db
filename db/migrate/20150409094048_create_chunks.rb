class CreateChunks < ActiveRecord::Migration
  def change
    create_table :chunks do |t|
      t.string :name, default: "chunk_"
      t.integer :overall_length
      t.integer :synstart
      t.integer :synend
      t.text :introduction
      t.boolean :latest_flag, default: true

      t.timestamps null: false
    end
  end
end
