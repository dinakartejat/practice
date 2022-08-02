class Book < ApplicationRecord
  # belongs_to :writer
  has_one :sponsorship
end
,
