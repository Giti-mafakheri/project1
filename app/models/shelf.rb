class Shelf < ApplicationRecord
  belongs_to :user , :optional =>true
end
