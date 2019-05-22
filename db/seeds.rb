# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

names = ['Adidas Originals', 'Nike Classic', 'Noname brand']
discounts = [2, 4, 5, 10, 15]

photos = [
  '/template-assets/images/products/t-shirt.png',
  '/template-assets/images/products/product-10.jpg',
  '/template-assets/images/products/product-11.jpg',
  '/template-assets/images/products/product-12.jpg'
]
Product.create(
  (1..200).map{ |i|
    {
      name: names.sample,
      desc: "Men's running shirt",
      sizes: Product::SIZES.sample(rand(2..Product::SIZES.count)),
      colors: Product::COLORS.sample(rand(2..Product::COLORS.count)),
      credits: rand(10..100),
      discount: discounts.sample,
      photo: File.open("#{Rails.root}/public#{photos.sample}")
    }
  }
)



def current_pages?(pagesArray)
  # pagesArray exaple ['everyday', 'learning']
  pagesArray.any?{ |page|
    current_page?(admin_path(page: page))
  }
end