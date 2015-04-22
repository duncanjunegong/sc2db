class Chunk < ActiveRecord::Base
  
  has_many :mega_chunk_relations
  has_many :megas, through: :mega_chunk_relations

  has_many :chunk_mini_relations
  has_many :minis, through: :chunk_mini_relations

end
