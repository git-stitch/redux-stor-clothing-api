# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

Product.create(name:"Pewdiepie Jean Jacket",categorie:"jacket",price:472,size:"s",url:"https://cdn-images.farfetch-contents.com/13/67/95/72/13679572_17913661_480.jpg")

Product.create(name:"Supreme Camo",categorie:"shirt",price:300,size:"m",url:"https://cdn-images.farfetch-contents.com/13/84/86/72/13848672_17518862_480.jpg")

Product.create(name:"Moschino Dotted Shorts",categorie:"shorts",price:176,size:"l",url:"https://cdn-images.farfetch-contents.com/13/32/07/61/13320761_16244671_480.jpg")


