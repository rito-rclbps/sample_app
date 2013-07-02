class AddGeocodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :geocode, :string
  end
end
