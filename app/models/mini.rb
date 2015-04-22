class Mini < ActiveRecord::Base

  enum ctype: { F: 0, Ho: 1, HoM: 2, Hwt: 3 }

  has_many :chunk_mini_relations
  has_many :chunks, through: :chunk_mini_relations

end
