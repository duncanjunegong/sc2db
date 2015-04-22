class Mega < ActiveRecord::Base
  
  enum marker: { LEU2: 0, URA3: 1 }

  has_many :chr_mega_relations
  has_many :chrs, through: :chr_mega_relations

  has_many :mega_chunk_relations
  has_many :chunks, through: :mega_chunk_relations

end
