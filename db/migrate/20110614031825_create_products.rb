class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string      :name
      t.integer     :position
      t.string      :product_url
      t.string      :seller
      t.string      :image_url
      t.integer     :view_count, :default => 0
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
