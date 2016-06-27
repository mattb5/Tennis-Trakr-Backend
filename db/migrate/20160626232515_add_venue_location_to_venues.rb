class AddVenueLocationToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :venue_location, :string
  end
end
