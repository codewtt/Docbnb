# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


c1=City.create(name:"Bangkok")
c2=City.create(name:"Tokyo")
c3=City.create(name:"Tourcoin")

d1=Dog.create(name:"Baida",city:c1)
d2=Dog.create(name:"Mon",city:c3)
d3=Dog.create(name:"Amour",city:c3)  

ds1=Dogistter.create(firstname:"René",lastname:"Lataupe",city:c3)
ds2=Dogistter.create(firstname:"Valérie",lastname:"Benaim",city:c3)
ds3=Dogistter.create(firstname:"Jean",lastname:"Jean",city:c3) 

s1=Stroll.create(dog:d1,dogistter:ds1)
s2=Stroll.create(dog:d2,dogistter:ds1) 
s3=Stroll.create(dog:d3,dogistter:ds1) 

puts "GET DOGS FOR STROLL" 

puts ds1.strolls 

puts "GET dogs for city" 

puts c3.dogs