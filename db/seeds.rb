require 'json'

puts "🌱 Seeding spices..."
# Seed your database here

file = File.read('./Book.json')
data_hash = JSON.parse(file)

data_hash.each.with_index(1) do |furniture, i|
    Furniture.create(
        id: i,
        name: furniture['Name'], 
        designer: furniture['Designer'], 
        material: furniture['Material'], 
        dimensions: furniture['Dimensions'],
        price: furniture['Price'],
        origin: furniture['Origin'],
        inventory: 3,
        image_id: i,
        category_id: furniture['Category'] == "Table" ? 1 : (furniture['Category'] == "Chair" ? 2 : (furniture['Category'] == "Sofa" ? 3 : nil) )
    )
    Image.create(
        id: i,
        angle1: furniture['Image1'],
        angle2: furniture['Image2'],
        angle3: furniture['Image3']
    )
end

Category.create(
    id: 1,
    category_name: "Table"
)
Category.create(
    id: 2,
    category_name: "Chair"
)
Category.create(
    id: 3,
    category_name: "Sofa"
)


Cart.create(id: 1, furniture_id:1)
Cart.create(id: 2, furniture_id:2)
Cart.create(id: 3, furniture_id:3)



puts "✅ Done seeding!"
