class ChangeNatParkTable < ActiveRecord::Migration[5.0]
  def change
    add_column :natparks, :topics, :text
    add_column :natparks, :activities, :text

  end
end
