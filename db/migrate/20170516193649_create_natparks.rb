class CreateNatparks < ActiveRecord::Migration[5.0]
  def change
    create_table :natparks do |t|
      t.text :states
      t.string :latLong
      t.text :description
      t.text :designation
      t.text :parkCode
      t.text :nps_id
      t.text :directionsInfo
      t.text :directionsUrl
      t.text :fullName
      t.text :url
      t.text :name
      t.text :weatherInfo
      t.timestamps
    end
  end
end

# THese are keys form api call needed to build objects
# t.text :states
# t.string :latLong
# t.text :description
# t.text :designation
# t.text :parkCode
# t.text :id
# t.text :directionsInfo
# t.text :directionsUrl
# t.text :fullName
# t.text :url
# t.text :weatherInfo
# t.text :name
