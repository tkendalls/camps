class AddExtendedCareToCampOfferings < ActiveRecord::Migration
  def change
    add_column :camp_offerings, :extended_care, :boolean, default: false
  end
end
