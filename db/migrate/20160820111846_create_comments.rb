class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text, null: false
      t.integer :review_id, null: false
      t.integer :person_id, null: false

      t.timestamps null: false
    end
  end
end
