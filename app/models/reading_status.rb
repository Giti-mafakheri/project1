class ReadingStatus < ApplicationRecord
  belongs_to :shelf , :optional =>true
end
