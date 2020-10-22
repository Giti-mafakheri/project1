class Book < ApplicationRecord
  belongs_to :author, :optional =>true
  belongs_to :genres, :optional =>true
  has_and_belongs_to_many :shelves
end
