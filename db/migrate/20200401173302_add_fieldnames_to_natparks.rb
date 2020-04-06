class AddFieldnamesToNatparks < ActiveRecord::Migration[5.0]
  def change
    add_column :natparks, :contacts, :string
    add_column :natparks, :longitude, :string
    add_column :natparks, :entranceFees, :string
    add_column :natparks, :entrancePasses, :string
    add_column :natparks, :operatingHours, :string
    add_column :natparks, :images, :string
    add_column :natparks, :addresses, :string
    add_column :natparks, :latitude, :string


  end
end
