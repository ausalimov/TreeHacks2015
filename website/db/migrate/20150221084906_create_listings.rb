class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
        t.integer :user_id
        t.integer :book_id
        t.datetime :date_time
        t.integer :condition

      t.timestamps
    end
  end
end
