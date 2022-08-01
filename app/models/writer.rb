class Writer < ApplicationRecord
  has_many :sponsorships
  has_many :books, through: :sponsorships
end
