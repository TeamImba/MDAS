FasterCSV.foreach("#{Rails.root}/products.csv") do |row|
  Product.create(:name => row[0], :seller => row[1], :product_url => row[2], :image_url => row[3], :position => rand(15) + rand(5) + rand(6))
end