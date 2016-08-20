class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :title, null: false
      t.integer :rating, null: false
      t.integer :person_id, null: false
      t.integer :album_id, null: false

      t.timestamps null: false
    end
  end
end
