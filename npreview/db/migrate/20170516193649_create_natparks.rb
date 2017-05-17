class CreateNatparks < ActiveRecord::Migration[5.0]
  def change
    create_table :natparks do |t|
      t.text :name
      t.string :state
      t.text :description
      t.timestamps
    end
  end
end
