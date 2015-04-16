class CreateChrMegaRelations < ActiveRecord::Migration
  def change
    create_table :chr_mega_relations do |t|
      t.string :chr_id
      t.string :mega_id

      t.timestamps null: false
    end
  end
end
