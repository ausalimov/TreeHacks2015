class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
        t.string :isbn
        t.string :name
        t.string :author
        t.date :pub_date
        t.float :version
        t.boolean :needed



      t.timestamps
    end
  end
end
