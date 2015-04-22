class CreateMegaChunkRelations < ActiveRecord::Migration
  def change
    create_table :mega_chunk_relations do |t|
      t.integer :mega_id
      t.integer :chunk_id

      t.timestamps null: false
    end

    add_index :mega_chunk_relations, :mega_id
    add_index :mega_chunk_relations, :chunk_id
    add_index :mega_chunk_relations, [:mega_id, :chunk_id], unique: true

  end
end
