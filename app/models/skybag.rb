class Skybag < ApplicationRecord
  validates :name, inclusion: { in: %w(luggagebag clgabg),
    message: "%{value} is not a valid name" }
end
,
