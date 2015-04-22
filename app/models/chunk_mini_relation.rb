class ChunkMiniRelation < ActiveRecord::Base

  belongs_to :chunk
  belongs_to :mini

  validates :chunk_id, presence: true
  validates :mini_id, presence: true

end
