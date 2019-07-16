# Redux Stor API

The Redux Stor API was meant to create a sample clothing store API. It was meant to give you the ability to simulate purchases and wishlists for quick eCommerce prototyping. Sample prices, images, and user data is provided via seed data. 

## Initial Setup

You will need Ruby installed and rails. The current build runs Ruby 2.6.1p33 and Rails 5.2.3. Bundle install or sudo bundle install to load gem file. 

### Installing

```
bundle install
```

or 

```
sudo bundle install
```

### Getting Started

To get started with running the server. This application assumes you have Postgres installed locally on your machine. If you don't you can visit  [Postgres](https://postgresapp.com/downloads.html) for the installation documentation. Then start the server and we can create the database. 

Create the database and Migrate Tables

```
rails db:create && rails db:migrate
```

The seed the database or create your own seeds in the seed file. 

```
rails db:seed
```

Run the server

```
rails s
```

![Rails](https://i.ibb.co/2ybrtLK/Screen-Shot-2019-07-16-at-12-53-09-PM.png "Rails Started")

# RESTful Routes
Here are some routes and example responses for using this api. 

## Get All Products
```
http://localhost:3000/api/v1/products
```

##  Example Response
```
[
      {
      "id": 1,
      "name": "Supreme Camo",
      "categorie": "shirt",
      "price": 300,
      "url": "https://cdn-images.farfetch-contents.com/13/84/86/72/13848672_17518862_480.jpg",
      "created_at": "2019-05-24T19:38:14.608Z",
      "updated_at": "2019-05-24T19:38:14.608Z"
      },
      {
      "id": 2,
      "name": "Valentino Shorts",
      "categorie": "shorts",
      "price": 795,
      "url": "https://cdn-images.farfetch-contents.com/13/91/39/12/13913912_18307479_480.jpg",
      "created_at": "2019-05-24T19:42:40.093Z",
      "updated_at": "2019-05-24T19:42:40.093Z"
      },
      {
      "id": 3,
      "name": "Pewdiepie Jean Jacket",
      "categorie": "jacket",
      "price": 472,
      "url": "https://cdn-images.farfetch-contents.com/13/67/95/72/13679572_17913661_480.jpg",
      "created_at": "2019-05-24T20:43:51.129Z",
      "updated_at": "2019-05-24T20:43:51.129Z"
      }
]
```

## Get a Product
```
http://localhost:3000/api/v1/products/:id
```

##  Example Response
```
    {
    "id": 1,
    "name": "Supreme Camo",
    "categorie": "shirt",
    "price": 300,
    "url": "https://cdn-images.farfetch-contents.com/13/84/86/72/13848672_17518862_480.jpg",
    "created_at": "2019-05-24T19:38:14.608Z",
    "updated_at": "2019-05-24T19:38:14.608Z"
}
```
## Create a Cart
```
POST to
http://localhost:3000/api/v1/carts
```

## Example Response
```
    {
      "user_id":7,
      "product_id":47,
      "quantity":2
    }
  Example Response:
    {
      "id": 3,
      "user_id": 7,
      "product_id": 47,
      "quantity": 2,
      "created_at": "2019-05-28T17:43:29.084Z",
      "updated_at": "2019-05-28T17:43:29.084Z"
    }
```

## Delete a Cart
```
http://localhost:3000/api/v1/carts/cart_id
```

## Example Body
```
{
  "id": 4,
  "user_id": 7,
  "product_id": 47,
  "quantity": 2,
  "paying":"true"
}
```

## Example Response
```
{
    "id": 7,
    "email": "yaBoy@gmail.com",
    "carts": [],
    "wish_lists": [
        {
            "id": 5,
            "user_id": 7,
            "product_id": 54,
            "quantity": 2,
            "created_at": "2019-05-28T15:58:46.293Z",
            "updated_at": "2019-05-28T15:58:46.293Z"
        },
        {
            "id": 7,
            "user_id": 7,
            "product_id": 48,
            "quantity": 2,
            "created_at": "2019-05-28T17:50:38.459Z",
            "updated_at": "2019-05-28T17:50:38.459Z"
        }
    ]
}
```

## Create a Wishlist
```
http://localhost:3000/api/v1/wish_lists
```

## Example Body
```
{
	"user_id":9,
	"product_id":51,
	"quantity":3
}
```

## Example Response
```
{
    "id": 9,
    "user_id": 9,
    "product_id": 51,
    "quantity": 3,
    "created_at": "2019-05-28T19:40:36.911Z",
    "updated_at": "2019-05-28T19:40:36.911Z"
}
```

## Delete WishList
```
http://localhost:3000/api/v1/wish_lists/wish_list_id
```

## Example Response
```
{
    "id": 9,
    "email": "rei@aol.com",
    "carts": [],
    "wish_lists": []
}
```

## Update WishList
```
http://localhost:3000/api/v1/wish_lists/wish_list_id
```

## Example Body
```
{
	"user_id":7,
	"product_id":51,
	"quantity":2
}
```

## Example Response
```
{
    "id": 10,
    "user_id": 7,
    "product_id": 51,
    "quantity": 2,
    "created_at": "2019-05-28T19:47:30.396Z",
    "updated_at": "2019-05-28T19:49:09.048Z"
}
```

## Built With

* [Ruby on Rails](https://rubyonrails.org/) - Backend Server
* [Postgres](https://postgresapp.com/) - Database management

## Versioning

I use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Author

* **Brenden Williams** - *Initial work* - [VonStein](https://github.com/VonStein7)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Big Ups to Flatiron School and my Cohort for supporting me through this project.
