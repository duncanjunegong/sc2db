class CreateChunkMiniRelations < ActiveRecord::Migration
  def change
    create_table :chunk_mini_relations do |t|
      t.integer :chunk_id
      t.integer :mini_id

      t.timestamps null: false
    end

    add_index :chunk_mini_relations, :chunk_id
    add_index :chunk_mini_relations, :mini_id
    add_index :chunk_mini_relations, [:chunk_id, :mini_id], unique: true

  end
end
