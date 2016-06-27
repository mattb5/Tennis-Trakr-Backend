#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :matches
  has_many :venues, through: :matches
end
