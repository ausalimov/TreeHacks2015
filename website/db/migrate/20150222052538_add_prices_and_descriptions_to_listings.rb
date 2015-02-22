class AddPricesAndDescriptionsToListings < ActiveRecord::Migration
  def change
  	add_column :listings, :price, :decimal, :precision => 8, :scale => 2
  	add_column :listings, :descript, :string
  	Listing.reset_column_information
  	Listing.all.each do |list|
  		list.price = 10.01
  		list.descript = "das it mane"
  		list.save()
  	end
  end
end
