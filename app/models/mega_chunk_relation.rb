class MegaChunkRelation < ActiveRecord::Base

  belongs_to :mega
  belongs_to :chunk

  validates :mega_id, presence: true
  validates :chunk_id, presence: true
  
end
