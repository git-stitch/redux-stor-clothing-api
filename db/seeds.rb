# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cart.destroy_all
WishList.destroy_all
Product.destroy_all
User.destroy_all


testWish2 = Product.create(name:"Pewdiepie Jean Jacket",categorie:"jacket",price:472,url:"https://cdn-images.farfetch-contents.com/13/67/95/72/13679572_17913661_480.jpg")

Product.create(name:"Supreme Camo",categorie:"shirt",price:300,url:"https://cdn-images.farfetch-contents.com/13/84/86/72/13848672_17518862_480.jpg")

Product.create(name:"Moschino Dotted Shorts",categorie:"shorts",price:176,url:"https://cdn-images.farfetch-contents.com/13/32/07/61/13320761_16244671_480.jpg")

Product.create(name:"Yellow Summer Dress",categorie:"dress",price:250,url:"https://lp2.hm.com/hmgoepprod?set=source[/9a/01/9a01459835726299d3cda1b5799a926aeaf0333c.jpg],origin[dam],category[],type[LOOKBOOK],res[m],res[s],hmver[1]&call=url[file:/product/main]")

Product.create(name:"Blue Summer Dress",categorie:"dress",price:400,url:"https://lp2.hm.com/hmgoepprod?set=source[/e3/e5/e3e5c28e9e78a7e6c7235723bcc8ed69c1118f93.jpg],origin[dam],category[ladies_dresses_shortdresses],type[LOOKBOOK],res[m],res[s],hmver[1]&call=url[file:/product/main]")

Product.create(name:"Black Embroiderd Dress",categorie:"dress",price:150,url:"https://lp2.hm.com/hmgoepprod?set=source[/72/da/72da7a5f4038ec586d9bcf1bcf2b903911ee4cbf.jpg],origin[dam],category[ladies_dresses_mididresses],type[LOOKBOOK],res[m],hmver[1]&call=url[file:/product/main]")

Product.create(name:"Nike Windrunner",categorie:"jacket",price:550,url:"https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/kbrrcsj5mdgwc40q21f5/sportswear-windrunner-mens-hooded-windbreaker-qJlX5L.jpg")

testProduct2 = Product.create(name:"Kyrie x Friends",categorie:"shirt",price:100,url:"https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/crixqtc6ntdlakronjgr/kyrie-dri-fit-friends-mens-basketball-t-shirt-fnJsWB.jpg")

testProduct1 = Product.create(name:"The Goat Thanos Edition",categorie:"shirt",price:750,url:"https://c.static-nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/velvak3as4f18sbmpqxs/new-england-patriots-super-bowl-liii-tom-brady-mens-game-football-jersey-Z6lZvB.jpg")

Product.create(name:"Damsel In Control",categorie:"shirt",price:100,url:"https://12ax7web.s3.amazonaws.com/accounts/1/products/imported/go-away-women_s-ultra-slim-t-shirt-model-teeturtle-1000x1000.jpg")

testWish1 = Product.create(name:"No Talkie Before Coffee",categorie:"shirt",price:50,url:"https://12ax7web.s3.amazonaws.com/accounts/1/products/imported/no-talkie-before-coffee-teeturtle-1000x1000.jpg")

Product.create(name:"Fairy In My Pocket",categorie:"shirt",price:250,url:"https://12ax7web.s3.amazonaws.com/accounts/1/products/1986199879912/Tinkerbell-Pocket-Shirt-turq-standard-t-shirt-model-teeturtle-10-1000x1000.jpg")

Product.create(name:"Adidas Track Pant",categorie:"pants",price:100,url:"https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/645b4eed4af344fcb09fa99200fead91_9366/Tiro_19_Training_Pants_Blue_DZ6166_22_model.jpg")

Product.create(name:"Black Chinos",categorie:"pants",price:125,url:"https://assets.adidas.com/images/w_320,h_320,f_auto,q_auto:sensitive,fl_lossy/1b8e6b27a6484d44acc6a9ae001f94f1_9366/Ultimate365_Classic_Pants_Black_DQ2217_21_model.jpg")

Product.create(name:"Grey Tech Chinos",categorie:"pants",price:159,url:"https://assets.adidas.com/images/w_840,h_840,f_auto,q_auto:sensitive,fl_lossy/8f2a2bf267d64a3eb7f7a99a01192fb0_9366/Ultimate365_Tech_Pants_Grey_DQ2195_21_model.jpg")

testUser1 = User.create(email:"yaBoy@gmail.com")
testUser2 = User.create(email:"eMan@gmail.com")

WishList.create(user_id:testUser1.id, product_id:testProduct1.id,quantity:2)

WishList.create(user_id:testUser2.id, product_id:testProduct2.id,quantity:3)

Cart.create(user_id:testUser1.id,product_id:testWish1.id, quantity:2)
Cart.create(user_id:testUser2.id,product_id:testWish2.id, quantity:1)
puts "Fin"

