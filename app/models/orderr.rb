class Orderr < ApplicationRecord
  has_many :iteems
  belongs_to :customerr
end
