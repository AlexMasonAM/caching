range = [*1...100]
100.times do
    Product.create(name: Faker::Commerce.product_name, price: range.sample)
end
