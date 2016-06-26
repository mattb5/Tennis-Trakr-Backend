class MatchSerializer < ActiveModel::Serializer
  attributes :id, :opponent, :date, :user_id, :result
  has_one :user
end
