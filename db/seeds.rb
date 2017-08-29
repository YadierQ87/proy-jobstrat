# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#semilla de paises
MCountry.destroy_all
MCountry.create!(
    [{ncountry:"Afghanistan"},     {ncountry:"Albania"},     {ncountry:"Algeria"},
     {ncountry:"Andorra"},     {ncountry:"Angola"},     {ncountry:"Antigua and Barbuda"},
     {ncountry:"Argentina"},     {ncountry:"Armenia"},     {ncountry:"Australia"},
     {ncountry:"Austria"},     {ncountry:"Azerbaijan"},     {ncountry:"Bahamas"},
     {ncountry:"Bahrain"},     {ncountry:"Bangladesh"},     {ncountry:"Barbados"},
     {ncountry:"Belarus"},     {ncountry:"Belgium"},     {ncountry:"Belize"},
     {ncountry:"Benin"},     {ncountry:"Bhutan"},     {ncountry:"Bolivia"},
     {ncountry:"Bosnia and Herzegovina"},     {ncountry:"Botswana"},     {ncountry:"Brazil"},
     {ncountry:"Brunei"},     {ncountry:"Bulgaria"},     {ncountry:"Burkina Faso"},
     {ncountry:"Burundi"},     {ncountry:"Cambodia"},     {ncountry:"Cameroon"},
     {ncountry:"Canada"},     {ncountry:"Cape Verde"},     {ncountry:"Central African Republic"},
     {ncountry:"Chad"},     {ncountry:"Chile"},     {ncountry:"China"},
     {ncountry:"Colombia"},     {ncountry:"Comoros"},     {ncountry:"Congo (Brazzaville)"},
     {ncountry:"Congo"},     {ncountry:"Costa Rica"},     {ncountry:"Cote d'Ivoire"},
     {ncountry:"Croatia"},     {ncountry:"Cuba"},     {ncountry:"Cyprus"},
     {ncountry:"Czech Republic"},     {ncountry:"Denmark"},     {ncountry:"Djibouti"},
     {ncountry:"Dominica"},     {ncountry:"Dominican Republic"},     {ncountry:"East Timor (Timor Timur)"},
     {ncountry:"Ecuador"},     {ncountry:"Egypt"},     {ncountry:"El Salvador"},
     {ncountry:"Equatorial Guinea"},     {ncountry:"Eritrea"},     {ncountry:"Estonia"},
     {ncountry:"Ethiopia"},     {ncountry:"Fiji"},     {ncountry:"Finland"},
     {ncountry:"France"},     {ncountry:"Gabon"},     {ncountry:"Gambia, The"},
     {ncountry:"Georgia"},     {ncountry:"Germany"},     {ncountry:"Ghana"},
     {ncountry:"Greece"},     {ncountry:"Grenada"},     {ncountry:"Guatemala"},
     {ncountry:"Guinea"},     {ncountry:"Guinea-Bissau"},     {ncountry:"Guyana"},
     {ncountry:"Haiti"},     {ncountry:"Honduras"},     {ncountry:"Hungary"},
     {ncountry:"Iceland"},     {ncountry:"India"},     {ncountry:"Indonesia"},
     {ncountry:"Iran"},     {ncountry:"Iraq"},     {ncountry:"Ireland"},
     {ncountry:"Israel"},     {ncountry:"Italy"},     {ncountry:"Jamaica"},
     {ncountry:"Japan"},     {ncountry:"Jordan"},     {ncountry:"Kazakhstan"},
     {ncountry:"Kenya"},     {ncountry:"Kiribati"},     {ncountry:"Korea, North"},
     {ncountry:"Korea, South"},     {ncountry:"Kuwait"},     {ncountry:"Kyrgyzstan"},
     {ncountry:"Laos"},     {ncountry:"Latvia"},     {ncountry:"Lebanon"},
     {ncountry:"Lesotho"},     {ncountry:"Liberia"},     {ncountry:"Libya"},
     {ncountry:"Liechtenstein"},     {ncountry:"Lithuania"},     {ncountry:"Luxembourg"},
     {ncountry:"Macedonia"},     {ncountry:"Madagascar"},     {ncountry:"Malawi"},
     {ncountry:"Malaysia"},     {ncountry:"Maldives"},     {ncountry:"Mali"},
     {ncountry:"Malta"},     {ncountry:"Marshall Islands"},     {ncountry:"Mauritania"},
     {ncountry:"Mauritius"},     {ncountry:"Mexico"},     {ncountry:"Micronesia"},
     {ncountry:"Moldova"},     {ncountry:"Monaco"},     {ncountry:"Mongolia"},
     {ncountry:"Morocco"},     {ncountry:"Mozambique"},     {ncountry:"Myanmar"},
     {ncountry:"Namibia"},     {ncountry:"Nauru"},     {ncountry:"Nepa"},
     {ncountry:"Netherlands"},     {ncountry:"New Zealand"},     {ncountry:"Nicaragua"},
     {ncountry:"Niger"},     {ncountry:"Nigeria"},     {ncountry:"Norway"},
     {ncountry:"Oman"},     {ncountry:"Pakistan"},     {ncountry:"Palau"},
     {ncountry:"Panama"},     {ncountry:"Papua New Guinea"},     {ncountry:"Paraguay"},
     {ncountry:"Peru"},     {ncountry:"Philippines"},     {ncountry:"Poland"},
     {ncountry:"Portugal"},     {ncountry:"Qatar"},     {ncountry:"Romania"},
     {ncountry:"Russia"},     {ncountry:"Rwanda"},     {ncountry:"Saint Kitts and Nevis"},
     {ncountry:"Saint Lucia"},     {ncountry:"Saint Vincent"},     {ncountry:"Samoa"},
     {ncountry:"San Marino"},     {ncountry:"Sao Tome and Principe"},     {ncountry:"Saudi Arabia"},
     {ncountry:"Senegal"},     {ncountry:"Serbia and Montenegro"},     {ncountry:"Seychelles"},
     {ncountry:"Sierra Leone"},     {ncountry:"Singapore"},     {ncountry:"Slovakia"},
     {ncountry:"Slovenia"},     {ncountry:"Solomon Islands"},     {ncountry:"Somalia"},
     {ncountry:"South Africa"},     {ncountry:"Spain"},     {ncountry:"Sri Lanka"},
     {ncountry:"Sudan"},     {ncountry:"Suriname"},     {ncountry:"Swaziland"},
     {ncountry:"Sweden"},     {ncountry:"Switzerland"},     {ncountry:"Syria"},
     {ncountry:"Taiwan"},     {ncountry:"Tajikistan"},     {ncountry:"Tanzania"},
     {ncountry:"Thailand"},     {ncountry:"Togo"},     {ncountry:"Tonga"},
     {ncountry:"Trinidad and Tobago"},     {ncountry:"Tunisia"},     {ncountry:"Turkey"},
     {ncountry:"Turkmenistan"},     {ncountry:"Tuvalu"},     {ncountry:"Uganda"},
     {ncountry:"Ukraine"},     {ncountry:"United Arab Emirates"},     {ncountry:"United Kingdom"},
     {ncountry:"United States"},     {ncountry:"Uruguay"},     {ncountry:"Uzbekistan"},
     {ncountry:"Vanuatu"},     {ncountry:"Vatican City"},     {ncountry:"Venezuela"},
     {ncountry:"Vietnam"},     {ncountry:"Yemen"},     {ncountry:"Zambia"},
     {ncountry:"Zimbabwe"}])

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
#Article.destroy_all
10.times do |index|
  Article.create!(title: Faker::Lorem.sentence(3, false, 0).chop,
                  text: Faker::Lorem.paragraph,)
end
p "Created #{Article.count} Article"

#creando Companies
#Company.destroy_all
20.times do |index|
  Company.create!(
      company: Faker::Company.name,
      fullname: Faker::Company.bs,
      description: Faker::Lorem.paragraph,
      m_country_id: Random.rand(1...100),
      contact: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email ,
      username: Faker::Internet.user_name,
      password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false),
  )
end
p "Created #{Company.count} Company"


#creando jobs
#Job.destroy_all
20.times do |index|
  timer = Time.now
  timer.strftime("%d/%m/%Y %H:%M:%S")
  Job.create!(
      title: Faker::Job.title,
      m_country_id: Random.rand(1...100),
      active: Faker::Boolean,
      description: Faker::Lorem.paragraph,
      #job_stat: Faker::Job.key_skill,
      category_id:Random.rand(1...8),
      company_id: Random.rand(1...20),
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
      description: Faker::Lorem.paragraph,
      contact: Faker::PhoneNumber.phone_number,
      email: Faker::Internet.email,
      sex: "Male",
      m_country_id: Random.rand(1...100),
      username: Faker::Internet.user_name,
      password: Faker::Internet.password(min_length = 8, max_length = 16, mix_case = true, special_chars = false),
      curriculum: Faker::Lorem.paragraph
  )
end

