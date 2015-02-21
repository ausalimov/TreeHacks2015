class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
        t.integer :user_id
        t.integer :book_id

      t.timestamps
    end
  end
end
