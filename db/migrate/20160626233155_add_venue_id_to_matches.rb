class AddVenueIdToMatches < ActiveRecord::Migration
  def change
    add_reference :matches, :venue, index: true, foreign_key: true
  end
end
