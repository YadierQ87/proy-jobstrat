# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#creando las categorias
Category.destroy_all
Category.create(category:"Finances/Economics")
Category.create(category:"Sale/Markting")
Category.create(category:"Education/Training")
Category.create(category:"Technologies")
Category.create(category:"Art/Design")
Category.create(category:"Healthcare")
Category.create(category:"Science")
Category.create(category:"Food Services")
p "Created #{Category.count} Category"


#creando articles
10.times do |index|
  Article.create!(title: Faker::Lorem.sentence(3, false, 0).chop,
                text: Faker::Lorem.paragraph,)
end
p "Created #{Article.count} Article"




