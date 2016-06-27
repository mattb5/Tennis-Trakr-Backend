class Venue < ActiveRecord::Base
  has_many :matches
  has_many :matches, through: :venues
end
