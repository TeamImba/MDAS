class CreateProductAnalytics < ActiveRecord::Migration
  def self.up
    create_table :product_analytics do |t|
      t.references    :product
      t.string        :referer
      t.timestamps
    end
    
    execute "alter table product_analytics add foreign key prod_fk (product_id) references products (id);"
  end

  def self.down
    drop_table :product_analytics
  end
end
