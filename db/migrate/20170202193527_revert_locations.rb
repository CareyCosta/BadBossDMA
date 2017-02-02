require_relative '20170202181325_locations.rb'

class RevertLocations < ActiveRecord::Migration[5.0]
  def change
    revert Locations

    create_table(:locations) do |t|
      t.string :city
    end
  end
end
