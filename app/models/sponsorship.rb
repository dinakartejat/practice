class Sponsorship < ApplicationRecord
  belongs_to :book
  belongs_to :writer
end
