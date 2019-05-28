# README

Major Keys For the ReduxStor Fake Clothing API
//////////////////////////////////////////////
Get All Products
//////////////////////////////////////////////
  Get all Products: http://localhost:3000/api/v1/products
  Example JSON response:
[
      {
      "id": 1,
      "name": "Supreme Camo",
      "categorie": "shirt",
      "price": 300,
      "size": "M",
      "url": "https://cdn-images.farfetch-contents.com/13/84/86/72/13848672_17518862_480.jpg",
      "created_at": "2019-05-24T19:38:14.608Z",
      "updated_at": "2019-05-24T19:38:14.608Z"
      },
      {
      "id": 2,
      "name": "Valentino Shorts",
      "categorie": "shorts",
      "price": 795,
      "size": "l",
      "url": "https://cdn-images.farfetch-contents.com/13/91/39/12/13913912_18307479_480.jpg",
      "created_at": "2019-05-24T19:42:40.093Z",
      "updated_at": "2019-05-24T19:42:40.093Z"
      },
      {
      "id": 3,
      "name": "Pewdiepie Jean Jacket",
      "categorie": "jacket",
      "price": 472,
      "size": "s",
      "url": "https://cdn-images.farfetch-contents.com/13/67/95/72/13679572_17913661_480.jpg",
      "created_at": "2019-05-24T20:43:51.129Z",
      "updated_at": "2019-05-24T20:43:51.129Z"
      }
]

//////////////////////////////////////////////
Get A Product
//////////////////////////////////////////////
GET one Product: http://localhost:3000/api/v1/products/:id
  Example Response:
    {
    "id": 1,
    "name": "Supreme Camo",
    "categorie": "shirt",
    "price": 300,
    "size": "M",
    "url": "https://cdn-images.farfetch-contents.com/13/84/86/72/13848672_17518862_480.jpg",
    "created_at": "2019-05-24T19:38:14.608Z",
    "updated_at": "2019-05-24T19:38:14.608Z"
}

//////////////////////////////////////////////
Create a cart
//////////////////////////////////////////////
POST to  http://localhost:3000/api/v1/carts
  Example Body:
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

//////////////////////////////////////////////
Create A Wish List
//////////////////////////////////////////////


