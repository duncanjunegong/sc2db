class ChrMegaRelation < ActiveRecord::Base

  belongs_to :chr
  belongs_to :mega

  validates :chr_id, presence: true
  validates :mega_id, presence: true

end
