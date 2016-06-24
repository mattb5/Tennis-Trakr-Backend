class MatchSerializer < ActiveModel::Serializer
  attributes :id, :opponent, :user_id
  has_one :user
end
