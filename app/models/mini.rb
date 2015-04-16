class Mini < ActiveRecord::Base

  enum ctype: { F: 0, Ho: 1, HoM: 2, Hwt: 3 }

end
