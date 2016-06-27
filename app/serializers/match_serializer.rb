class MatchSerializer < ActiveModel::Serializer
  attributes :id, :opponent, :date, :user_id, :result, :venue_id
  has_one :user
  has_one :venue
end
