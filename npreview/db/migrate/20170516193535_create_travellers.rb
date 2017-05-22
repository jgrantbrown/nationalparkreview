class CreateTravellers < ActiveRecord::Migration[5.0]
  def change
    create_table :travellers do |t|
      t.string :name
      # t.string :username
      # t.string :first_name
      # t.string :last_name
      # t.string :email
      # t.text :bio
      # t.string :password_digest
      # t.boolean :admin, :default => false

      t.timestamps
    end
  end
end
