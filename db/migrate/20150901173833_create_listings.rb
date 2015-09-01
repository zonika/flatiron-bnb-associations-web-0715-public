class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :address
      t.string :listing_type
      t.integer :price
      t.belongs_to :neighborhood, index:true
      t.belongs_to :host, :class_name => "User"
      t.timestamps null: false
    end
  end
end
