# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
# unless Rails.env.development?
#   puts "Development seeds only (for now)!"
#   exit 0
# end

# Let's do this ...

## CATEGORIES

puts "Finding or Creating Categories ..."

cat1 = Category.find_or_create_by! name: 'Apparel'
cat2 = Category.find_or_create_by! name: 'Electronics'
cat3 = Category.find_or_create_by! name: 'Furniture'

## PRODUCTS

puts "Re-creating Products ..."

Product.destroy_all

shirt = cat1.products.create!({
  name:  'Men\'s Classy shirt',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel1.jpg'),
  quantity: 10,
  price: 64.99
})

pants = cat1.products.create!({
  name:  'Women\'s Zebra pants',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel2.jpg'),
  quantity: 18,
  price: 124.99
})

hat = cat1.products.create!({
  name:  'Hipster Hat',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel3.jpg'),
  quantity: 4,
  price: 34.49
})

socks = cat1.products.create!({
  name:  'Hipster Socks',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel4.jpg'),
  quantity: 8,
  price: 25.00
})

spy_shoes = cat1.products.create!({
  name:  'Russian Spy Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel5.jpg'),
  quantity: 8,
  price: 1_225.00
})

feet_shoes = cat1.products.create!({
  name:  'Human Feet Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel6.jpg'),
  quantity: 82,
  price: 224.50
})


skateboards = cat2.products.create!({
  name:  'Modern Skateboards',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics1.jpg'),
  quantity: 40,
  price: 164.49
})

slicer = cat2.products.create!({
  name:  'Hotdog Slicer',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics2.jpg'),
  quantity: 3,
  price: 26.00
})

watch = cat2.products.create!({
  name:  'World\'s Largest Smartwatch',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics3.jpg'),
  quantity: 32,
  price: 2_026.29
})

bed = cat3.products.create!({
  name:  'Optimal Sleeping Bed',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture1.jpg'),
  quantity: 320,
  price: 3_052.00
})

chair = cat3.products.create!({
  name:  'Electric Chair',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture2.jpg'),
  quantity: 2,
  price: 987.65
})

bookshelf = cat3.products.create!({
  name:  'Red Bookshelf',
  description: Faker::Hipster.paragraph(4),
  image: 'https://res.cloudinary.com/dx1hfqenq/image/upload/v1552962685/jungle/furniture3.jpg',
  quantity: 0,
  price: 2_483.75
})

user1 = User.create!({
  first_name: "Apple",
  last_name: "Blue",
  email: "aplle_blue@gmail.com",
  password: "apple"
})

user2 = User.create!({
  first_name: "Banana",
  last_name: "Green",
  email: "banana_green@gmail.com",
  password: "banana"
})

user3 = User.create!({
  first_name: "Citron",
  last_name: "Pink",
  email: "citron_pink@gmail.com",
  password: "citron"
})

bookshelf.reviews.create(
    user: user1,
    description: "Nice shape!",
    rating: 5
)

bookshelf.reviews.create(
    user: user2,
    description: "too expensive",
    rating: 2
)

chair.reviews.create(
  user: user1,
  description: "It's unconfortable and too heavy",
  rating: 2
)

slicer.reviews.create(
  user: user2,
  description: "works great!",
  rating: 5
)

slicer.reviews.create(
  user: user3,
  description: "Love this!",
  rating: 5
)

# another way to make data
# cat1.products.first.reviews.create!()
# Product.first.reviews.create!();

puts "DONE!"
