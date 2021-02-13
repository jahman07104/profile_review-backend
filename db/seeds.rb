# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

profiles = [

  {
    "name": "John Conners",
    "image": "https://i.pravatar.cc/150?img=52",
    "city": "Newark,Nj",
    "email": "John@gmail.com",
    "phone": "973-888-9999"    
 },
 {
    "name": "Jennifer Jones",
    #"image": "https://i.pravatar.cc/150?img=44",
    "image": "https://i.pravatar.cc/150?img=52",
    "city": "Tacoma,Washington",
    "email": "jennifer@gmail.com",
    "phone": "201-444-5555"    
  },

  {
    "name": "Patrick Harrison",
    #"image": "https://i.pravatar.cc/150?img=51",
    "image": "https://i.pravatar.cc/150?img=52",
    "city": "New York,New York",
    "email": "patrick@verizon.net",
    "phone": "312-333-2222"
   
  },
  {
    "name": "Julie Dominick",
    #"image": "https://i.pravatar.cc/150?img=40",
    "image": "https://i.pravatar.cc/150?img=52",
   "city": "Dayton,Ohio",
   "email": "Julie@Verizon.net",
   "phone": "561-666-7777"
  },
  {
    "name": "Howard Mason",
    #"image": "https://i.pravatar.cc/150?img=68",
    "image": "https://i.pravatar.cc/150?img=52",
    "city": "Miami,Florida",
    "email": "howard@aol.com",
    "phone": "978-777-7777"
  },
  {
    "name": "Mary Hibbert",
    #"image": "https://i.pravatar.cc/150?img=47",
    "image": "https://i.pravatar.cc/150?img=52",
    "city": "Savannah,Georgia",
    "email": "mary@aol.com",
    "phone": "212-666-6666"
  }
 
]

profiles.each do |profile|
  Profile.create(name: profile[:name], image: profile[:image], city: profile[:city], email: profile[:email], phone: profile[:phone])
end
