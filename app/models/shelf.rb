class Shelf < ApplicationRecord
  belongs_to  :user , :optional =>true
  has_many :ReadingStatuses
  has_and_belongs_to_many :books
end
