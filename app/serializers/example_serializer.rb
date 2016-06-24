# An example for user of the template
class ExampleSerializer < ActiveModel::Serializer
  attributes :id, :text, :editable
  has_one :user
  def editable
    scope == object.user
  end
end
