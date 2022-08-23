List<Map<String, dynamic>>categoriesMock = [
  {
    "id":"001",
    "name":"Nike",
    "icon":"🍇",
    "products":[
      "01",
      "02",
      "03",
      "04",
      "05",
    ],
  },
  {
    "id":"002",
    "name":"Adidas",
    "icon":"🍹",
    "products":[
      "06",
      "07",
      "08",
      "09",
    ],
  },
  {
    "id":"003",
    "name":"Puma",
    "icon":"🥛",
    "products":[
      "11",
      "12",
    ],
  }
];


List<Map<String, dynamic>>productsMock = [

  //Nike
  {
    'id': "01",
    'title': "Nike G-wks khun",
    'price': 1200,
    'categoryId': "001",
    'images': [
      "https://img2.goodfon.com/original/5323x5150/4/66/apples-splash-water-drops.jpg",
      "https://www.pngmart.com/files/1/Nike-Shoes.png",
      "https://www.pngmart.com/files/1/Nike-Shoes-Transparent-Background.png",
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "42",
    'companyName': "Nike",
  },

  {
    'id': "02",
    'title': "Pear",
    "discount":0.15,
    'price': 1100,
    'categoryId': "001",
    'images': [
      "https://www.freepngimg.com/thumb/pear/10-2-pear-png-picture.png",
      "https://floraplanet.blob.core.windows.net/floraplanet/76e456c5432649ca95ce182ddb1a6a54",
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Uz Garden",
  },

  {
    'id': "03",
    'title': "Grapes",
    'price': 1400,
    'categoryId': "001",
    'images': [
      "https://www.revistamira.com.mx/wp-content/uploads/2015/12/hu2.jpg",
      "https://s1.1zoom.me/big0/102/Fruit_Grapes_Closeup_444729.jpg",
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Uz Garden",
  },

  {
    'id': "04",
    'title': "Peach",
    'price': 9000,
    'categoryId': "001",
    'images': [
      "https://www.freepngimg.com/thumb/peach/46-sliced-peaches-png-image.png",
      "https://media.baamboozle.com/uploads/images/38223/1588600828_628421",
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Uz Garden",
  },

  {
    'id': "05",
    'title': "Melon",
    'price': 5000,
    'categoryId': "001",
    'images': [
      "https://www.morningtea.in/wp-content/uploads/2018/01/488828-melon-pc-backgrounds_a2uluj.jpg",
      "https://nomnomz.co.uk/wp-content/uploads/2020/08/honeydew-1.jpg",
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Uz Garden",
  },


  //Adidas
  {
    'id': "06",
    'title': "Adidas",
    'price': 2500,
    "description":"This is useful for health",
    'categoryId': "002",
    'images': [
      "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/a735f397587037.5eda1f933de87.jpg",
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "41",
    'companyName': "Adidas",
  },

  {
    'id': "07",
    'title': "Pepsi",
    "discount":0.11,
    'price': 7000,
    'categoryId': "002",
    'images': [
      "https://static.tildacdn.com/tild3363-6630-4437-a461-653333613733/pepsi05.jpg",
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Pepsi",
  },

  {
    'id': "08",
    'title': "Fanta",
    'price': 7500,
    'categoryId': "002",
    'images': [
      "https://www.thecandybox.org/wp-content/uploads/2020/08/Fanta-Orange.jpg",
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Fanta",
  },

  {
    'id': "09",
    'title': "Cola",
    'price': 7500,
    'categoryId': "002",
    'images': [
      "https://lavashura.ru/upload/iblock/c78/c7895ef54e1a535d67cda57b5c8ed5a6.jpg",
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Cola",
  },


  //Puma
  {
    'id': "11",
    'title': "Puma",
    'price': 21000,
    'categoryId': "003",
    'images': [
      "https://upload.wikimedia.org/wikipedia/commons/2/21/Nc_cheese.jpg",
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "41",
    'companyName': "Puma",
  },

  {
    'id': "12",
    'title': "Ice-cream",
    'price': 21000,
    'categoryId': "003",
    'images': [
      "https://i.pinimg.com/originals/44/a9/a4/44a9a489b4aee98d1e990de07348e928.jpg",
    ],
    'createdDate': DateTime(2022, 8, 21, 14).toString(),
    'size': "1",
    'companyName': "Imkon Plus",
  },


];