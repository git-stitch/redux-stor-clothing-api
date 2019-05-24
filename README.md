# README

Major Keys For the ReduxStor Fake Clothing API
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



This README would normally document whatever steps are necessary to get the application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration
    
* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
