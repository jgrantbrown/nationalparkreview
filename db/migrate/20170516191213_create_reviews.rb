class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :comment
      t.integer :natpark_id
      t.integer :traveller_id
      t.timestamps
    end
  end
end
