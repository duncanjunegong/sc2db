class AddIndexToChrMegaRelation < ActiveRecord::Migration
  def change
    add_index :chr_mega_relations, :chr_id
    add_index :chr_mega_relations, :mega_id
    add_index :chr_mega_relations, [:chr_id, :mega_id], unique: true
  end
end
