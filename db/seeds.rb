# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#creando las categorias
#Category.destroy_all
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
#Article.destroy_all
10.times do |index|
  Article.create!(title: Faker::Lorem.sentence(3, false, 0).chop,
                  text: Faker::Lorem.paragraph,)
end
p "Created #{Article.count} Article"


#creando Companies
#Company.destroy_all
10.times do |index|
  Company.create!(
      company: Faker::Company.name,
      fullname: Faker::Company.bs,
      picture: Faker::Name.name,
      description: Faker::Lorem.paragraph,
      country: 'MEXICO',
      contact: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email ,
      username: Faker::Internet.user_name,
      password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false),
  )
end
p "Created #{Company.count} Company"


#creando jobs
#Job.destroy_all
10.times do |index|
  timer = Time.now
  timer.strftime("%d/%m/%Y %H:%M:%S")
  Job.create!(
      title: Faker::Job.title,
      country: 'CUBA',
      active: Faker::Boolean,
      description: Faker::Lorem.paragraph,
      picture: Faker::Job.field,
      job_stat: Faker::Job.key_skill,
      publicate_at: timer,
      category_id:Random.rand(68...76),
      company_id: Random.rand(26...30),
  )
end
p "Created #{Job.count} Jobs"
#t = Time.now
#puts t.strftime("%d/%m/%Y %H:%M:%S")
#today =  Time.now
#today.to_formatted_s(:db)

#creando employees
10.times do |index|
  Employee.create!(
      fullname: Faker::Name.name,
      picture: Faker::Job.field,
      description: Faker::Lorem.paragraph,
      contact: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email,
      sex: "Male",
      username: Faker::Internet.user_name,
      password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false),
      curriculum: Faker::Lorem.paragraph
  )
end


