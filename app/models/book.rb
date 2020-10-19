class Book < ApplicationRecord
  belongs_to :author, :optional =>true
  has_and_belongs_to_many :gneres
  has_and_belongs_to_many :shelves
end
