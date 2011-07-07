class AddProductColumns < ActiveRecord::Migration
  def self.up
    add_column :products, :week_number, :integer
    add_column :products, :category, :string
    Product.update_all("week_number = #{Time.now.strftime("%U")} and position = 0")
  end

  def self.down
  end
end
