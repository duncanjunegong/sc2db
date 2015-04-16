class Chr < ActiveRecord::Base
  
  enum ctype: { WildType: 0, Synthetic: 1 }
  enum manipulation: { Pcr_tag_design: 1, Remove_stop_codon: 2 }

  has_many :chr_mega_relations
  has_many :megas, through: :chr_mega_relations

end
