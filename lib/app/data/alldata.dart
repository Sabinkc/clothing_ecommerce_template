import 'dart:math';

final List products = [
  //PANTS
  {
    "featured": "New Arrivals",
    "product_id": "pants1",
    "name": "Ultimate365 Chino Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants1",
    "color": {
      0xff000000: [
        "assets/img/pants1_black_1.png",
        "assets/img/pants1_black_2.avif",
        "assets/img/pants1_black_3.avif",
        "assets/img/pants1_black_4.avif",
      ],
      0xff0000FF: [
        "assets/img/pants1_blue_1.avif",
        "assets/img/pants1_blue_2.avif",
        "assets/img/pants1_blue_3.avif",
        "assets/img/pants1_blue_4.avif",
      ],
      0xffC0C0C0: [
        "assets/img/pants1_silver_1.avif",
        "assets/img/pants1_silver_2.avif",
        "assets/img/pants1_silver_3.avif",
        "assets/img/pants1_silver_4.avif",
      ],
    },
    "size": ["30x30", "30x31", "30x32", "30x33"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Best Sellers",
    "product_id": "pants1_2",
    "name": "Chino Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants1",
    "color": {
      0xff0000FF: [
        "assets/img/pants1_blue_1.avif",
        "assets/img/pants1_blue_2.avif",
        "assets/img/pants1_blue_3.avif",
        "assets/img/pants1_blue_4.avif",
      ],
      0xff000000: [
        "assets/img/pants1_black_1.png",
        "assets/img/pants1_black_2.avif",
        "assets/img/pants1_black_3.avif",
        "assets/img/pants1_black_4.avif",
      ],
      0xffC0C0C0: [
        "assets/img/pants1_silver_1.avif",
        "assets/img/pants1_silver_2.avif",
        "assets/img/pants1_silver_3.avif",
        "assets/img/pants1_silver_4.avif",
      ],
    },
    "size": ["30x30", "30x31", "30x32", "30x33"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "D&S Exclusives",
    "product_id": "pants1_3",
    "name": "Pants Ultimate365",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants1",
    "color": {
      0xffC0C0C0: [
        "assets/img/pants1_silver_1.avif",
        "assets/img/pants1_silver_2.avif",
        "assets/img/pants1_silver_3.avif",
        "assets/img/pants1_silver_4.avif",
      ],
      0xff000000: [
        "assets/img/pants1_black_1.png",
        "assets/img/pants1_black_2.avif",
        "assets/img/pants1_black_3.avif",
        "assets/img/pants1_black_4.avif",
      ],
      0xff0000FF: [
        "assets/img/pants1_blue_1.avif",
        "assets/img/pants1_blue_2.avif",
        "assets/img/pants1_blue_3.avif",
        "assets/img/pants1_blue_4.avif",
      ],
    },
    "size": ["30x30", "30x31", "30x32", "30x33"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Sales",
    "product_id": "pants2_1",
    "name": "JJIGLENN JJORIGINAL SQ 349 NOOS Slim fit jeans",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants2",
    "color": {
      0xff0000FF: [
        "assets/img/pants2_blue_1.webp",
        "assets/img/pants2_blue_2.webp",
        "assets/img/pants2_blue_3.webp",
        "assets/img/pants2_blue_4.webp",
      ]
    },
    "size": ["26", "27", "28", "29", "30"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
  },
  {
    "featured": "What's Upcoming?",
    "product_id": "pants2_2",
    "name": "JJIGLENN JJORIGINAL SQ 349 NOOS Slim fit jeans",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants2",
    "color": {
      0xff808080: [
        "assets/img/pants2_2_gray_1.webp",
        "assets/img/pants2_2_gray_2.webp",
        "assets/img/pants2_2_gray_3.webp",
        "assets/img/pants2_2_gray_4.webp",
      ]
    },
    "size": ["26", "27", "28", "29", "30"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Offers",
    "product_id": "pants2_3",
    "name": "491 NOOS Loose fit jeans",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants2",
    "color": {
      0xff0000FF: [
        "assets/img/pants2_3_blue_1.webp",
        "assets/img/pants2_3_blue_2.webp",
        "assets/img/pants2_3_blue_3.webp",
        "assets/img/pants2_3_blue_4.webp",
      ]
    },
    "size": ["26", "27", "28", "29", "30"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants2_4",
    "name": "JJIEDDIE JJORIGINAL SQ 738 NOOS Loose fit jeans",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants2",
    "color": {
      0xff0000FF: [
        "assets/img/pants2_4_blue_1.webp",
        "assets/img/pants2_4_blue_2.webp",
        "assets/img/pants2_4_blue_3.webp",
        "assets/img/pants2_4_blue_4.webp",
      ]
    },
    "size": ["26", "27", "28", "29", "30"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants2_5",
    "name": "JJIEDDIE JJORIGINAL SQ 738 NOOS Loose fit jeans",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title": "JJIGLENN JJORIGINAL SQ 223 NOOS Slim fit jeans",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants2",
    "color": {
      0xff0000FF: [
        "assets/img/pants2_5_blue_1.webp",
        "assets/img/pants2_5_blue_2.webp",
        "assets/img/pants2_5_blue_3.webp",
        "assets/img/pants2_5_blue_4.webp",
        "assets/img/pants2_5_blue_4.webp",
      ]
    },
    "size": ["26", "27", "28", "29", "30"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants2_6",
    "name": "JJICLARK JJORIGINAL AM 419 NOOS Regular fit jeans",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title": "JJIGLENN JJORIGINAL SQ 223 NOOS Slim fit jeans",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants2",
    "color": {
      0xff0000FF: [
        "assets/img/pants2_6_1_blue_1.webp",
        "assets/img/pants2_6_1_blue_2.webp",
        "assets/img/pants2_6_1_blue_3.webp",
        "assets/img/pants2_6_1_blue_4.webp",
      ]
    },
    "size": ["26", "27", "28", "29", "30"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants2_7",
    "name": "JJICLARK JJORIGINAL AM 419 NOOS Regular fit jeans",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title": "JJIGLENN JJORIGINAL SQ 223 NOOS Slim fit jeans",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants2",
    "color": {
      0xff000000: [
        "assets/img/pants2_7_1_black_1.webp",
        "assets/img/pants2_7_1_black_2.webp",
        "assets/img/pants2_7_1_black_3.webp",
        "assets/img/pants2_7_1_black_4.webp",
      ]
    },
    "size": ["26", "27", "28", "29", "30"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants3_1",
    "name": "AdiClub Cargo Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants3",
    "color": {
      0xff00FF00: [
        "assets/img/pants3_1_green_1.avif",
        "assets/img/pants3_1_green_2.avif",
        "assets/img/pants3_1_green_3.avif",
        "assets/img/pants3_1_green_4.avif",
      ],
      0xff000000: [
        "assets/img/pants3_1_black_1.avif",
        "assets/img/pants3_1_black_2.avif",
        "assets/img/pants3_1_black_3.avif",
        "assets/img/pants3_1_black_4.avif",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants3_2",
    "name": "Premium Essentials Twill Cargo Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants3",
    "color": {
      0xff0000FF: [
        "assets/img/pants3_2_blue_1.avif",
        "assets/img/pants3_2_blue_2.avif",
        "assets/img/pants3_2_blue_3.avif",
        "assets/img/pants3_2_blue_4.avif",
      ],
      0xff000000: [
        "assets/img/pants3_2_black_1.avif",
        "assets/img/pants3_2_black_2.avif",
        "assets/img/pants3_2_black_3.avif",
        "assets/img/pants3_2_black_4.avif",
      ]
    },
    "size": ["30", "32", "33", "34"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants3_3",
    "name": "Premium Essentials Twill Cargo Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants3",
    "color": {
      0xff000000: [
        "assets/img/pants3_3_black_1.avif",
        "assets/img/pants3_3_black_2.avif",
        "assets/img/pants3_3_black_3.avif",
        "assets/img/pants3_3_black_4.avif",
      ],
      0xff0000FF: [
        "assets/img/pants3_3_blue_1.avif",
        "assets/img/pants3_3_blue_2.avif",
        "assets/img/pants3_3_blue_3.avif",
        "assets/img/pants3_3_blue_4.avif",
      ]
    },
    "size": ["30", "32", "33", "34"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants3_4",
    "name": "Adicolor Classics 3-Stripes Cargo Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants3",
    "color": {
      0xff00FF00: [
        "assets/img/pants3_4_green_1.avif",
        "assets/img/pants3_4_green_2.avif",
        "assets/img/pants3_4_green_3.avif",
        "assets/img/pants3_4_green_4.avif",
      ],
      0xff0000FF: [
        "assets/img/pants3_4_black_1.avif",
        "assets/img/pants3_4_black_2.avif",
        "assets/img/pants3_4_black_3.avif",
        "assets/img/pants3_4_black_4.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants3_5",
    "name": "Premium Essentials Twill Cargo Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants3",
    "color": {
      0xffFFC0CB: [
        "assets/img/pants3_5_pink_1.avif",
        "assets/img/pants3_5_pink_2.avif",
        "assets/img/pants3_5_pink_3.avif",
        "assets/img/pants3_5_pink_4.avif",
      ],
      0xff0000FF: [
        "assets/img/pants3_5_black_1.avif",
        "assets/img/pants3_5_black_2.avif",
        "assets/img/pants3_5_black_3.avif",
        "assets/img/pants3_5_black_4.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants3_6",
    "name": "Y-3 Washed Twill Cargo Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants3",
    "color": {
      0xffC0C0C0: [
        "assets/img/pants3_6_silver_1.avif",
        "assets/img/pants3_6_silver_2.avif",
        "assets/img/pants3_6_silver_3.avif",
        "assets/img/pants3_6_silver_4.avif",
      ],
      0xff000000: [
        "assets/img/pants3_6_black_1.avif",
        "assets/img/pants3_6_black_2.avif",
        "assets/img/pants3_6_black_3.avif",
        "assets/img/pants3_6_black_4.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants3_7",
    "name": "Enjoy Summer Cargo Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants3",
    "color": {
      0xff00FF00: [
        "assets/img/pants3_7_green_1.avif",
        "assets/img/pants3_7_green_2.avif",
        "assets/img/pants3_7_green_3.avif",
        "assets/img/pants3_7_green_4.avif",
      ],
      0xff000000: [
        "assets/img/pants3_7_black_1.avif",
        "assets/img/pants3_7_black_2.avif",
        "assets/img/pants3_7_black_3.avif",
        "assets/img/pants3_7_black_4.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants4_1",
    "name": "Adicolor Baggy Fit Firebird Track Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants4",
    "color": {
      0xffA52A2A: [
        "assets/img/pants4_1_brown_1.avif",
        "assets/img/pants4_1_brown_2.avif",
        "assets/img/pants4_1_brown_3.avif"
            "assets/img/pants4_1_brown_4.avif"
      ],
      0xff0000FF: [
        "assets/img/pants4_1_blue_1.avif",
        "assets/img/pants4_1_blue_2.avif",
        "assets/img/pants4_1_blue_3.avif",
        "assets/img/pants4_1_blue_4.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants4_2",
    "name": "Basketball Cargo Sweat Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants4",
    "color": {
      0xffA52A2A: [
        "assets/img/pants4_2_brown_1.avif",
        "assets/img/pants4_2_brown_2.avif",
        "assets/img/pants4_2_brown_3.avif"
            "assets/img/pants4_2_brown_4.avif"
      ],
      0xff0000FF: [
        "assets/img/pants4_2_blue_1.avif",
        "assets/img/pants4_2_blue_2.avif",
        "assets/img/pants4_2_blue_3.avif",
        "assets/img/pants4_2_blue_4.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants4_3",
    "name": "Adicolor Baggy Fit Firebird Track Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants4",
    "color": {
      0xffA52A2A: [
        "assets/img/pants4_3_brown_1.avif",
        "assets/img/pants4_3_brown_2.avif",
        "assets/img/pants4_3_brown_3.avif",
        "assets/img/pants4_3_brown_4.avif",
      ],
      0xff0000FF: [
        "assets/img/pants4_3_blue_1.avif",
        "assets/img/pants4_3_blue_2.avif",
        "assets/img/pants4_3_blue_3.avif",
        "assets/img/pants4_3_blue_4.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants4_4",
    "name": "Adicolor Baggy Fit Firebird Track Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants4",
    "color": {
      0xff00FF00: [
        "assets/img/pants4_4_green_1.avif",
        "assets/img/pants4_4_green_2.avif",
        "assets/img/pants4_4_green_3.avif",
        "assets/img/pants4_4_green_4.avif",
      ],
      0xff000000: [
        "assets/img/pants4_4_black_1.avif",
        "assets/img/pants4_4_black_2.avif",
        "assets/img/pants4_4_black_3.avif",
        "assets/img/pants4_4_black_4.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants4_5",
    "name": "Argentina Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants4",
    "color": {
      0xffC0C0C0: [
        "assets/img/pants4_5_silver_1.avif",
        "assets/img/pants4_5_silver_2.avif",
        "assets/img/pants4_5_silver_3.avif",
        "assets/img/pants4_5_silver_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants4_6",
    "name": "Essentials Fleece Regular Tapered Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants4",
    "color": {
      0xff000000: [
        "assets/img/pants4_6_black_1.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants5_1",
    "name": "Z.N.E. Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants5",
    "color": {
      0xffFF0000: [
        "assets/img/pants5_1_red_1.avif",
        "assets/img/pants5_1_red_2.avif",
        "assets/img/pants5_1_red_3.avif",
        "assets/img/pants5_1_red_4.avif",
      ],
      0xff0000FF: [
        "assets/img/pants5_1_blue_1.avif",
        "assets/img/pants5_1_blue_2.avif",
        "assets/img/pants5_1_blue_3.avif",
        "assets/img/pants5_1_blue_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants5_2",
    "name": "Adicolor Neuclassics Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants5",
    "color": {
      0xff000000: [
        "assets/img/pants5_2_black_1.avif",
        "assets/img/pants5_2_black_2.avif",
        "assets/img/pants5_2_black_3.avif",
        "assets/img/pants5_2_black_4.avif",
      ],
      0xff00FF00: [
        "assets/img/pants5_2_green_1.avif",
        "assets/img/pants5_2_green_2.avif",
        "assets/img/pants5_2_green_3.avif",
        "assets/img/pants5_2_green_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants5_3",
    "name": "ALL SZN Fleece Regular Tapered Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants5",
    "color": {
      0xffC0C0C0: [
        "assets/img/pants5_3_silver_1.avif",
        "assets/img/pants5_3_silver_2.avif",
        "assets/img/pants5_3_silver_3.avif",
        "assets/img/pants5_3_silver_4.avif",
      ],
      0xff0000FF: [
        "assets/img/pants5_3_blue_1.avif",
        "assets/img/pants5_3_blue_2.avif",
        "assets/img/pants5_3_blue_3.avif",
        "assets/img/pants5_3_blue_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants5_4",
    "name": "Adicolor Neuclassics Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants5",
    "color": {
      0xff000000: [
        "assets/img/pants5_4_black_1.avif",
        "assets/img/pants5_4_black_2.avif",
        "assets/img/pants5_4_black_3.avif",
        "assets/img/pants5_4_black_4.avif",
      ],
      0xff00FF00: [
        "assets/img/pants5_4_green_1.avif",
        "assets/img/pants5_4_green_2.avif",
        "assets/img/pants5_4_green_3.avif",
        "assets/img/pants5_4_green_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants6_1",
    "name": "Z.N.E. Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants6",
    "color": {
      0xffC0C0C0: [
        "assets/img/pants6_1_silver_1.avif",
        "assets/img/pants6_1_silver_2.avif"
            "assets/img/pants6_1_silver_3.avif"
            "assets/img/pants6_1_silver_4.avif"
      ],
      0xff0000FF: [
        "assets/img/pants6_1_blue_1.avif",
        "assets/img/pants6_1_blue_2.avif",
        "assets/img/pants6_1_blue_3.avif",
        "assets/img/pants6_1_blue_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants6_2",
    "name": "ALL SZN Fleece Regular Tapered Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants6",
    "color": {
      0xff00FF00: [
        "assets/img/pants6_2_green_1.avif",
        "assets/img/pants6_2_green_2.avif",
        "assets/img/pants6_2_green_3.avif",
        "assets/img/pants6_2_green_4.avif",
      ],
      0xff0000FF: [
        "assets/img/pants6_2_blue_1.avif",
        "assets/img/pants6_2_blue_2.avif",
        "assets/img/pants6_2_blue_3.avif",
        "assets/img/pants6_2_blue_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants6_3",
    "name": "Adicolor Neuclassics Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants6",
    "color": {
      0xff000000: [
        "assets/img/pants6_3_black_1.avif",
        "assets/img/pants6_3_black_2.avif",
        "assets/img/pants6_3_black_3.avif",
        "assets/img/pants6_3_black_4.avif",
      ],
      0xff00FF00: [
        "assets/img/pants6_3_green_1.avif",
        "assets/img/pants6_3_green_2.avif",
        "assets/img/pants6_3_green_3.avif",
        "assets/img/pants6_3_green_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants7_1",
    "name":
        "Fruit of the Loom Unisex Adult Eversoft Fleece Hoodie Luxury Watch with Stainless Steel",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants7",
    "color": {
      0xff00FF00: [
        "assets/img/pants7_1_green_1.avif",
        "assets/img/pants7_1_green_2.avif",
        "assets/img/pants7_1_green_3.avif",
        "assets/img/pants7_1_green_4.avif",
      ],
      0xff000000: [
        "assets/img/.pants7_1_black_1.avif",
        "assets/img/.pants7_1_black_2.avif",
        "assets/img/.pants7_1_black_3.avif",
        "assets/img/.pants7_1_black_4.avif",
      ],
    },
    "size": ["30x30", "30x31", "35x32", "36x34", "29x30"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants7_2",
    "name": "3-Stripes Skate Chino Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants7",
    "color": {
      0xff000000: [
        "assets/img/pants7_2_black_1.avif",
        "assets/img/pants7_1_black_2.avif",
        "assets/img/pants7_1_black_3.avif",
        "assets/img/pants7_1_black_4.avif",
      ],
    },
    "size": ["30x30", "30x31", "35x32", "36x34", "29x30"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants7_3",
    "name": "Ultimate365 Chino Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants7",
    "color": {
      0xff000000: [
        "assets/img/pants7_3_black_1.avif",
        "assets/img/pants7_1_black_2.avif",
        "assets/img/pants7_1_black_3.avif",
        "assets/img/pants7_1_black_4.avif",
      ],
      0xff0000FF: [
        "assets/img/pants7_3_blue_1.avif",
        "assets/img/pants7_3_blue_2.avif",
        "assets/img/pants7_3_blue_3.avif",
        "assets/img/pants7_3_blue_4.avif",
      ],
    },
    "size": ["30x30", "30x31", "35x32", "36x34", "29x30"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "pants7_4",
    "name": "Ultimate365 Chino Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "Pants",
    "sub_category_id": "Pants7",
    "color": {
      0xff0000FF: [
        "assets/img/pants7_3_blue_1.avif",
        "assets/img/pants7_3_blue_2.avif",
        "assets/img/pants7_3_blue_3.avif",
        "assets/img/pants7_3_blue_4.avif",
      ],
      0xff000000: [
        "assets/img/pants7_3_black_1.avif",
        "assets/img/pants7_1_black_2.avif",
        "assets/img/pants7_1_black_3.avif",
        "assets/img/pants7_1_black_4.avif",
      ],
    },
    "size": ["30x30", "30x31", "35x32", "36x34", "29x30"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  //T-SHIRTS & TOPS
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 1_1",
    "name": "Topman oversized fit boucle polo in brown marl",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 1",
    "color": {
      0xffADD8E6: [
        "assets/img/tshirts1_1_lightBlue_1.avif",
        "assets/img/tshirts1_1_lightBlue_2.avif",
        "assets/img/tshirts1_1_lightBlue_3.avif",
        "assets/img/tshirts1_1_lightBlue_4.avif",
      ],
      0xff000000: [
        "assets/img/tshirts1_1_black_1.avif",
        "assets/img/tshirts1_1_black_2.avif",
        "assets/img/tshirts1_1_black_3.avif",
        "assets/img/tshirts1_1_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Best Sellers",
    "product_id": "t-shirts & tops 1_2",
    "name": "Topman essential polo in charcoal",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 1",
    "color": {
      0xff808080: [
        "assets/img/tshirts1_2_gray_1.avif",
        "assets/img/tshirts1_2_gray_2.avif",
        "assets/img/tshirts1_2_gray_3.avif",
        "assets/img/tshirts1_2_gray_4.avif",
      ],
      0xff000000: [
        "assets/img/tshirts1_2_black_1.avif",
        "assets/img/tshirts1_2_black_2.avif",
        "assets/img/tshirts1_3_black_3.avif",
        "assets/img/tshirts1_4_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "D&S Exclusives",
    "product_id": "t-shirts & tops 1_3",
    "name": "Topman relaxed fit jumper in black & white animal crew",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 1",
    "color": {
      0xff808080: [
        "assets/img/tshirts1_3_gray_1.avif",
        "assets/img/tshirts1_3_gray_2.avif",
        "assets/img/tshirts1_3_gray_3.avif",
        "assets/img/tshirts1_3_gray_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Sales",
    "product_id": "t-shirts & tops 1_4",
    "name": "Topman relaxed fit jumper in light blue",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 1",
    "color": {
      0xffA52A2A: [
        "assets/img/tshirts1_4_brown_1.avif",
        "assets/img/tshirts1_4_brown_2.avif",
        "assets/img/tshirts1_4_brown_3.avif",
        "assets/img/tshirts1_4_brown_4.avif",
      ],
      0xff000000: [
        "assets/img/tshirts1_4_black_1.avif",
        "assets/img/tshirts1_4_black_2.avif",
        "assets/img/tshirts1_4_black_3.avif",
        "assets/img/tshirts1_4_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "What's Upcoming?",
    "product_id": "t-shirts & tops 1_5",
    "name": "adidas x Malbon Cardigan",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 1",
    "color": {
      0xffFFFF00: [
        "assets/img/tshirts1_5_yellow_1.avif",
        "assets/img/tshirts1_5_yellow_2.avif",
        "assets/img/tshirts1_5_yellow_3.avif",
        "assets/img/tshirts1_5_yellow_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Offers",
    "product_id": "t-shirts & tops 2_1",
    "name": "Nike Tech",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 2",
    "color": {
      0xff000000: [
        "assets/img/tshirts2_1_black_1.png",
        "assets/img/tshirts2_1_black_2.png",
        "assets/img/tshirts2_1_black_3.jpeg",
        "assets/img/tshirts2_1_black_4.png",
      ],
      0xff0000FF: [
        "assets/img/tshirts2_1_blue_1.jpeg",
        "assets/img/tshirts2_1_blue_2.png",
        "assets/img/tshirts2_1_blue_3.jpeg",
        "assets/img/tshirts2_1_blue_4.jpeg",
      ],
      0xff00FF00: [
        "assets/img/tshirts2_1_green_1.jpeg",
        "assets/img/tshirts2_1_green_2.jpeg",
        "assets/img/tshirts2_1_green_3.jpeg",
        "assets/img/tshirts2_1_green_4.jpeg",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 2_2",
    "name": "Nike Sportswear Tech Fleece",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 2",
    "color": {
      0xffE5C8A8: [
        "assets/img/tshirts2_2_desertSand_1.jpeg",
        "assets/img/tshirts2_2_desertSand_2.jpeg",
        "assets/img/tshirts2_2_desertSand_3.jpeg",
        "assets/img/tshirts2_2_desertSand_4.jpeg",
      ],
      0xffFF0000: [
        "assets/img/tshirts2_2_red_1.jpeg",
        "assets/img/tshirts2_2_red_2.jpeg",
        "assets/img/tshirts2_2_red_3.jpeg",
        "assets/img/tshirts2_2_red_4.jpeg",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 2_3",
    "name": "Nike Unlimited",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 2",
    "color": {
      0xff00FF00: [
        "assets/img/tshirts2_3_green_1.jpeg",
        "assets/img/tshirts2_3_green_2.png",
        "assets/img/tshirts2_3_green_3.jpeg",
        "assets/img/tshirts2_3_green_4.png",
      ],
      0xffC0C0C0: [
        "assets/img/tshirts2_3_silver_1.jpeg",
        "assets/img/tshirts2_3_silver_2.png",
        "assets/img/tshirts2_3_silver_3.jpeg",
        "assets/img/tshirts2_3_silver_4.jpeg",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 2_4",
    "name": "Nike ACG",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 2",
    "color": {
      0xffA52A2A: [
        "assets/img/tshirts2_4_brown_1.jpeg",
        "assets/img/tshirts2_4_brown_2.jpeg",
        "assets/img/tshirts2_4_brown_3.jpeg",
        "assets/img/tshirts2_4_brown_4.png",
      ],
      0xff800080: [
        "assets/img/tshirts2_4_purple_1.jpeg",
        "assets/img/tshirts2_4_purple_2.jpeg",
        "assets/img/tshirts2_4_purple_3.jpeg",
        "assets/img/tshirts2_4_purple_4.jpeg",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 3_1",
    "name": "Wrangler x Buffalo Trace™ Men's Sherpa Pullover in Kentucky Green",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 3",
    "color": {
      0xff00FF00: [
        "assets/img/tshirts3_1_green_1.webp",
        "assets/img/tshirts3_1_green_2.webp",
        "assets/img/tshirts3_1_green_3.webp",
        "assets/img/tshirts3_1_green_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 3_2",
    "name": "Men's Jacquard Quarter Zip Hooded Popover Jacket in Sapphire Way",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 3",
    "color": {
      0xff800080: [
        "assets/img/tshirts3_2_purple_1.webp",
        "assets/img/tshirts3_2_purple_2.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 3_3",
    "name": "Men's Wrangler Quarter Zip Waffle Fleece Pullover in Iris",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 3",
    "color": {
      0xff0000FF: [
        "assets/img/tshirts3_3_blue_1.webp",
        "assets/img/tshirts3_3_blue_2.webp",
        "assets/img/tshirts3_3_blue_3.webp",
        "assets/img/tshirts3_3_blue_4.webp",
      ],
      0xff808080: [
        "assets/img/tshirts3_3_gray_1.jpeg",
        "assets/img/tshirts3_3_gray_2.webp",
        "assets/img/tshirts3_3_gray_3.webp",
        "assets/img/tshirts3_3_gray_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 3_4",
    "name": "Men's George Strait Quarter-Zip Quilted Pullover in Charcoal",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 3",
    "color": {
      0xff808080: [
        "assets/img/tshirts3_4_gray_1.webp",
        "assets/img/tshirts3_4_gray_2.webp",
        "assets/img/tshirts3_4_gray_3.webp",
        "assets/img/tshirts3_4_gray_4.webp",
      ],
      0xffADD8E6: [
        "assets/img/tshirts3_4_lightBlue_1.webp",
        "assets/img/tshirts3_4_lightBlue_2.webp",
        "assets/img/tshirts3_4_lightBlue_3.webp",
        "assets/img/tshirts3_4_lightBlue_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 3_5",
    "name": "Men's Wrangler® Heavyweight Quarter-Zip Sherpa Pullover in Alpine",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 3",
    "color": {
      0xff00FF00: [
        "assets/img/tshirts3_5_green_1.webp",
        "assets/img/tshirts3_5_green_2.webp",
        "assets/img/tshirts3_5_green_3.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 4_1",
    "name": "CARMINE MERINO HIGH NECK",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 4",
    "color": {
      0xffFF0000: [
        "assets/img/tshirts4_1_red_1.webp",
        "assets/img/tshirts4_1_red_2.webp",
        "assets/img/tshirts4_1_red_3.webp",
        "assets/img/tshirts4_1_red_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 4_2",
    "name": "CARAMEL MERINO HIGHNECK",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 4",
    "color": {
      0xffA52A2A: [
        "assets/img/tshirts4_2_brown_1.webp",
        "assets/img/tshirts4_2_brown_2.webp",
        "assets/img/tshirts4_2_brown_3.webp",
        "assets/img/tshirts4_2_brown_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 4_3",
    "name": "EBONY MERINO HIGH NECK",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 4",
    "color": {
      0xff0000FF: [
        "assets/img/tshirts4_3_blue_1.webp",
        "assets/img/tshirts4_3_blue_2.webp",
        "assets/img/tshirts4_3_blue_3.webp",
        "assets/img/tshirts4_3_blue_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 4_4",
    "name": "ECRU MERINO HIGH NECK",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 4",
    "color": {
      0xffFFFFFF: [
        "assets/img/tshirts4_4_white_1.webp",
        "assets/img/tshirts4_4_white_2.webp",
        "assets/img/tshirts4_4_white_3.webp",
        "assets/img/tshirts4_4_white_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 5_1",
    "name": "MONO SHIRT",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 5",
    "color": {
      0xff0000FF: [
        "assets/img/tshirts5_1_blue_1.avif",
        "assets/img/tshirts5_1_blue_2.avif",
        "assets/img/tshirts5_1_blue_3.avif",
        "assets/img/tshirts5_1_blue_4.avif",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 5_2",
    "name": "Adicolor Polar Fleece Shirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 5",
    "color": {
      0xff000000: [
        "assets/img/tshirts5_2_black_1.avif",
        "assets/img/tshirts5_2_black_2.avif",
        "assets/img/tshirts5_2_black_3.avif",
        "assets/img/tshirts5_2_black_4.avif",
      ],
      0xffE5C8A8: [
        "assets/img/tshirts5_2_desertsand_1.avif",
        "assets/img/tshirts5_2_desertsand_2.avif",
        "assets/img/tshirts5_2_desertsand_3.avif",
        "assets/img/tshirts5_2_desertsand_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 5_3",
    "name": "Adicolor Polar Fleece Shirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 5",
    "color": {
      0xffE5C8A8: [
        "assets/img/tshirts5_2_desertsand_1.avif",
        "assets/img/tshirts5_2_desertsand_2.avif",
        "assets/img/tshirts5_2_desertsand_3.avif",
        "assets/img/tshirts5_2_desertsand_4.avif",
      ],
      0xff000000: [
        "assets/img/tshirts5_2_black_1.avif",
        "assets/img/tshirts5_2_black_2.avif",
        "assets/img/tshirts5_2_black_3.avif",
        "assets/img/tshirts5_2_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 6_1",
    "name": "Own the Run Long Sleeve Tee",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 6",
    "color": {
      0xff800080: [
        "assets/img/tshirts6_1_purple_1.avif",
        "assets/img/tshirts6_1_purple_2.avif",
        "assets/img/tshirts6_1_purple_3.avif",
      ],
      0xff0000FF: [
        "assets/img/tshirts6_1_blue_1.avif",
        "assets/img/tshirts6_1_blue_2.avif",
        "assets/img/tshirts6_1_blue_3.avif",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 6_2",
    "name": "Adicolor Trefoil Tee",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 6",
    "color": {
      0xff00FF00: [
        "assets/img/tshirts6_2_green_1.avif",
        "assets/img/tshirts6_2_green_2.avif",
        "assets/img/tshirts6_2_green_3.avif",
        "assets/img/tshirts6_2_green_4.avif",
      ],
      0xffE5C8A8: [
        "assets/img/tshirts6_2_desertsand_1.avif",
        "assets/img/tshirts6_2_desertsand_2.avif",
        "assets/img/tshirts6_2_desertsand_3.avif",
        "assets/img/tshirts6_2_desertsand_4.avif",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 6_3",
    "name": "Ottoman Polo Shirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 6",
    "color": {
      0xff000000: [
        "assets/img/tshirts6_3_black_1.avif",
        "assets/img/tshirts6_3_black_2.avif",
        "assets/img/tshirts6_3_black_3.avif",
        "assets/img/tshirts6_3_black_4.avif",
      ],
      0xff800080: [
        "assets/img/tshirts6_3_purple_1.avif",
        "assets/img/tshirts6_3_purple_2.avif",
        "assets/img/tshirts6_3_purple_3.avif",
        "assets/img/tshirts6_3_purple_4.avif",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 6_4",
    "name": "Core adidas Performance Primegreen Polo Shirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 6",
    "color": {
      0xff000000: [
        "assets/img/tshirts6_4_black_1.avif",
        "assets/img/tshirts6_4_black_2.avif",
        "assets/img/tshirts6_4_black_3.avif",
        "assets/img/tshirts6_4_black_4.avif",
      ],
      0xff0000FF: [
        "assets/img/tshirts6_4_blue_1.avif",
        "assets/img/tshirts6_4_blue_2.avif",
        "assets/img/tshirts6_4_blue_3.avif",
        "assets/img/tshirts6_4_blue_4.avif",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 6_5",
    "name": "Core adidas Performance Primegreen Polo Shirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 6",
    "color": {
      0xff0000FF: [
        "assets/img/tshirts6_4_blue_1.avif",
        "assets/img/tshirts6_4_blue_2.avif",
        "assets/img/tshirts6_4_blue_3.avif",
        "assets/img/tshirts6_4_blue_4.avif",
      ],
      0xff000000: [
        "assets/img/tshirts6_4_black_1.avif",
        "assets/img/tshirts6_4_black_2.avif",
        "assets/img/tshirts6_4_black_3.avif",
        "assets/img/tshirts6_4_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 6_6",
    "name": "CTrefoil Essentials Tee",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 6",
    "color": {
      0xffFFA500: [
        "assets/img/tshirts6_6_orange_1.avif",
        "assets/img/tshirts6_6_orange_2.avif",
        "assets/img/tshirts6_6_orange_3.avif",
        "assets/img/tshirts6_6_orange_4.avif",
      ],
      0xff808080: [
        "assets/img/tshirts6_6_grey_1.avif",
        "assets/img/tshirts6_6_grey_2.avif",
        "assets/img/tshirts6_6_grey_3.avif",
        "assets/img/tshirts6_6_grey_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 6_7",
    "name": "Train Essentials Feelready Training Tee",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 6",
    "color": {
      0xffFF0000: [
        "assets/img/tshirts6_7_red_1.avif",
        "assets/img/tshirts6_7_red_2.avif",
        "assets/img/tshirts6_7_red_3.avif",
        "assets/img/tshirts6_7_red_4.avif",
      ],
      0xff0000FF: [
        "assets/img/tshirts6_7_blue_1.avif",
        "assets/img/tshirts6_7_blue_2.avif",
        "assets/img/tshirts6_7_blue_3.avif",
        "assets/img/tshirts6_7_blue_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 7_1",
    "name": "Tiro 23 League Training Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 7",
    "color": {
      0xffC0C0C0: [
        "assets/img/tshirts7_1_silver_1.avif",
      ],
      0xff000000: [
        "assets/img/tshirts7_1_black_1.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 7_2",
    "name": "Tiro 23 League Training Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 7",
    "color": {
      0xff000000: [
        "assets/img/tshirts7_1_black_1.avif",
      ],
      0xffC0C0C0: [
        "assets/img/tshirts7_1_silver_1.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "t-shirts & tops 7_3",
    "name": "Own the Run Long Sleeve Tee",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "T-SHIRTS & TOPS",
    "sub_category_id": "T-Shirts & Tops 7",
    "color": {
      0xffA52A2A: [
        "assets/img/tshirts7_3_brown_1.avif",
        "assets/img/tshirts7_3_brown_2.avif",
        "assets/img/tshirts7_3_brown_3.avif",
      ],
      0xff0000FF: [
        "assets/img/tshirts7_3_blue_1.avif",
        "assets/img/tshirts7_3_blue_2.avif",
        "assets/img/tshirts7_3_blue_3.avif",
      ],
      0xff000000: [
        "assets/img/tshirts7_3_black_1.avif",
        "assets/img/tshirts7_3_black_2.avif",
        "assets/img/tshirts7_3_black_3.avif",
        "assets/img/tshirts7_3_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  //JACKETS & COATS
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 1_1",
    "name": "Tiro 24 Windbreaker",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 1",
    "color": {
      0xff000000: [
        "assets/img/jacketsCoats1_1_black_1.avif",
        "assets/img/jacketsCoats1_1_black_2.avif",
        "assets/img/jacketsCoats1_1_black_3.avif",
        "assets/img/jacketsCoats1_1_black_4.avif",
      ],
    },
    "size": ["2XS", "XS", "S", "L", "XL", "3XL", "4XL", "5XL", "6XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Best Sellers",
    "product_id": "jackets & coats 1_2",
    "name": "Arsenal Seasonal Half-Zip Windbreaker",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 1",
    "color": {
      0xff0000FF: [
        "assets/img/jacketsCoats1_2_blue_1.avif",
        "assets/img/jacketsCoats1_2_blue_2.avif",
        "assets/img/jacketsCoats1_2_blue_3.avif",
        "assets/img/jacketsCoats1_2_blue_4.avif",
      ],
    },
    "size": ["2XS", "XS", "S", "L", "XL", "3XL", "4XL", "5XL", "6XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "D&S Exclusives",
    "product_id": "jackets & coats 1_3",
    "name": "Ultimate365 Convertible Jacketr",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 1",
    "color": {
      0xff808080: [
        "assets/img/jacketsCoats1_3_grey_1.avif",
        "assets/img/jacketsCoats1_3_grey_2.avif",
        "assets/img/jacketsCoats1_3_grey_3.avif",
        "assets/img/jacketsCoats1_3_grey_4.avif",
      ],
    },
    "size": ["2XS", "XS", "S", "L", "XL", "3XL", "4XL", "5XL", "6XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Sales",
    "product_id": "jackets & coats 1_4",
    "name": "Adicolor Woven Crewneck Windbreaker",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 1",
    "color": {
      0xff00FF00: [
        "assets/img/jacketsCoats1_4_green_1.avif",
        "assets/img/jacketsCoats1_4_green_2.avif",
        "assets/img/jacketsCoats1_4_green_3.avif",
        "assets/img/jacketsCoats1_4_green_4.avif",
      ],
      0xff000000: [
        "assets/img/jacketsCoats1_4_black_1.avif",
        "assets/img/jacketsCoats1_4_black_2.avif",
        "assets/img/jacketsCoats1_4_black_3.avif",
        "assets/img/jacketsCoats1_4_black_4.avif",
      ],
    },
    "size": ["2XS", "XS", "S", "L", "XL", "3XL", "4XL", "5XL", "6XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },

  {
    "featured": "What's Upcoming?",
    "product_id": "jackets & coats 2_1",
    "name": "Essentials 3-Stripes Insulated Hooded Hybrid Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 2",
    "color": {
      0xff808080: [
        "assets/img/jacketsCoats2_1_grey_1.avif",
        "assets/img/jacketsCoats2_1_grey_2.avif",
        "assets/img/jacketsCoats2_1_grey_3.avif",
        "assets/img/jacketsCoats2_1_grey_4.avif",
      ],
      0xff00FF00: [
        "assets/img/jacketsCoats2_1_green_1.avif",
        "assets/img/jacketsCoats2_1_green_2.avif",
        "assets/img/jacketsCoats2_1_green_3.avif",
        "assets/img/jacketsCoats2_1_green_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL", "3XL", "4XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Offers",
    "product_id": "jackets & coats 2_2",
    "name": "Big Baffle Down Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 2",
    "color": {
      0xff000000: [
        "assets/img/jacketsCoats2_2_black_1.avif",
        "assets/img/jacketsCoats2_2_black_2.avif",
        "assets/img/jacketsCoats2_2_black_3.avif",
        "assets/img/jacketsCoats2_2_black_4.avif",
      ],
      0xffE5C8A8: [
        "assets/img/jacketsCoats2_2_desertSand_1.avif",
        "assets/img/jacketsCoats2_2_desertSand_2.avif",
        "assets/img/jacketsCoats2_2_desertSand_3.avif",
        "assets/img/jacketsCoats2_2_desertSand_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL", "3XL", "4XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 2_3",
    "name": "Essentials 3-Stripes Light Down Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 2",
    "color": {
      0xff000000: [
        "assets/img/jacketsCoats2_3_black_1.avif",
        "assets/img/jacketsCoats2_3_black_2.avif",
        "assets/img/jacketsCoats2_3_black_3.avif",
        "assets/img/jacketsCoats2_3_black_4.avif",
      ],
      0xff0000FF: [
        "assets/img/jacketsCoats2_3_blue_1.avif",
        "assets/img/jacketsCoats2_3_blue_2.avif",
        "assets/img/jacketsCoats2_3_blue_3.avif",
        "assets/img/jacketsCoats2_3_blue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL", "3XL", "4XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 2_4",
    "name": "Adicolor Reversible Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 2",
    "color": {
      0xff000000: [
        "assets/img/jacketsCoats2_4_black_1.avif",
        "assets/img/jacketsCoats2_4_black_2.avif",
        "assets/img/jacketsCoats2_4_black_3.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL", "3XL", "4XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 2_5",
    "name": "Myshelter Primaloft Lite Bomber Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 2",
    "color": {
      0xff00FF00: [
        "assets/img/jacketsCoats2_5_green_1.avif",
        "assets/img/jacketsCoats2_5_green_2.avif",
        "assets/img/jacketsCoats2_5_green_3.avif",
        "assets/img/jacketsCoats2_5_green_4.avif",
      ],
      0xff000000: [
        "assets/img/jacketsCoats2_5_black_1.avif",
        "assets/img/jacketsCoats2_5_black_2.avif",
        "assets/img/jacketsCoats2_5_black_3.avif",
        "assets/img/jacketsCoats2_5_black_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL", "3XL", "4XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 2_6",
    "name": "Helionic Hooded Down Vest",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 2",
    "color": {
      0xffE5C8A8: [
        "assets/img/jacketsCoats2_6_desertSand_1.avif",
        "assets/img/jacketsCoats2_6_desertSand_2.avif",
        "assets/img/jacketsCoats2_6_desertSand_3.avif",
        "assets/img/jacketsCoats2_6_desertSand_4.avif",
      ],
      0xff000000: [
        "assets/img/jacketsCoats2_6_black_1.avif",
        "assets/img/jacketsCoats2_6_black_2.avif",
        "assets/img/jacketsCoats2_6_black_3.avif",
        "assets/img/jacketsCoats2_6_black_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL", "3XL", "4XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 3_1",
    "name":
        "Fruit of the Loom Unisex Adult Eversoft Fleece Hoodie Luxury Watch with Stainless Steel",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title": "Y-3 Sport Uniform Blazer",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 3",
    "color": {
      0xff000000: [
        "assets/img/jacketsCoats3_1_black_1.avif",
        "assets/img/jacketsCoats3_1_black_2.avif",
        "assets/img/jacketsCoats3_1_black_3.avif",
        "assets/img/jacketsCoats3_1_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 3_2",
    "name": "Reclaimed Vintage collarless blazer in grey",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title": "Y-3 Sport Uniform Blazer",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 3",
    "color": {
      0xff808080: [
        "assets/img/jacketsCoats3_2_gray_1.avif",
        "assets/img/jacketsCoats3_2_gray_2.avif",
        "assets/img/jacketsCoats3_2_gray_3.avif",
        "assets/img/jacketsCoats3_2_gray_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 3_3",
    "name": "AllSaints Andrius leather blazer in black",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title": "Y-3 Sport Uniform Blazer",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 3",
    "color": {
      0xff000000: [
        "assets/img/jacketsCoats3_3_black_1.avif",
        "assets/img/jacketsCoats3_3_black_2.avif",
        "assets/img/jacketsCoats3_3_black_3.avif",
        "assets/img/jacketsCoats3_3_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 3_4",
    "name": "ONLY & SONS slim fit blazer in navy",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title": "Y-3 Sport Uniform Blazer",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 3",
    "color": {
      0xff0000FF: [
        "assets/img/jacketsCoats3_4_blue_1.avif",
        "assets/img/jacketsCoats3_4_blue_2.avif",
        "assets/img/jacketsCoats3_4_blue_3.avif",
        "assets/img/jacketsCoats3_4_blue_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 4_1",
    "name": "Men's Blue Bell Raw Denim Jacket in Cooper",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 4",
    "color": {
      0xff0000FF: [
        "assets/img/jacketsCoats4_1_blue_1.webp",
        "assets/img/jacketsCoats4_1_blue_2.webp",
        "assets/img/jacketsCoats4_1_blue_3.webp",
        "assets/img/jacketsCoats4_1_blue_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 4_2",
    "name": "Men's Western Sherpa Lined Denim Wrange Jacket in Rustic Navy",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 4",
    "color": {
      0xff0000FF: [
        "assets/img/jacketsCoats4_2_blue_1.webp",
        "assets/img/jacketsCoats4_2_blue_2.webp",
        "assets/img/jacketsCoats4_2_blue_3.webp",
        "assets/img/jacketsCoats4_2_blue_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 4_3",
    "name":
        "Men's Wrangler Retro® Sherpa Lined Western Denim Jacket in Rodeo Night",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 4",
    "color": {
      0xffADD8E6: [
        "assets/img/jacketsCoats4_3_lightBlue_1.webp",
        "assets/img/jacketsCoats4_3_lightBlue_2.webp",
        "assets/img/jacketsCoats4_3_lightBlue_3.webp",
        "assets/img/jacketsCoats4_3_lightBlue_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 4_4",
    "name": "Wrangler® x PacSun Men's Trucker Jacket in Bolster",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 4",
    "color": {
      0xffADD8E6: [
        "assets/img/jacketsCoats4_4_lightBlue_1.webp",
        "assets/img/jacketsCoats4_4_lightBlue_2.webp",
        "assets/img/jacketsCoats4_4_lightBlue_3.webp",
        "assets/img/jacketsCoats4_4_lightBlue_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 4_5",
    "name": "Wrangler® Western Sherpa Lined Denim Trucker Jacket in Rustic",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 4",
    "color": {
      0xff0000FF: [
        "assets/img/jacketsCoats4_5_blue_1.webp",
        "assets/img/jacketsCoats4_5_blue_2.jpeg",
        "assets/img/jacketsCoats4_5_blue_3.webp",
        "assets/img/jacketsCoats4_5_blue_4.jpeg",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 4_6",
    "name": "Men's Western Lined Canvas Barn Coat in Hay Bale",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 4",
    "color": {
      0xffA52A2A: [
        "assets/img/jacketsCoats4_6_brown_1.webp",
        "assets/img/jacketsCoats4_6_brown_2.webp",
        "assets/img/jacketsCoats4_6_brown_3.webp",
        "assets/img/jacketsCoats4_6_brown_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 5_1",
    "name": "Myshelter Primaloft Lite Bomber Jacketß",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 5",
    "color": {
      0xff000000: [
        "assets/img/jacketsCoats5_1_black_1.avif",
        "assets/img/jacketsCoats5_1_black_2.avif",
        "assets/img/jacketsCoats5_1_black_3.avif",
        "assets/img/jacketsCoats5_1_black_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 5_2",
    "name": "Lite Bomber Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 5",
    "color": {
      0xff00FF00: [
        "assets/img/jacketsCoats5_2_green_1.avif",
        "assets/img/jacketsCoats5_2_green_2.avif",
        "assets/img/jacketsCoats5_2_green_3.avif",
        "assets/img/jacketsCoats5_2_green_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 5_3",
    "name": "Adilenium Season 2 Washed Bomber Jacket (Gender Neutral)",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 5",
    "color": {
      0xff808080: [
        "assets/img/jacketsCoats5_3_gray_1.avif",
        "assets/img/jacketsCoats5_3_gray_2.avif",
        "assets/img/jacketsCoats5_3_gray_3.avif",
        "assets/img/jacketsCoats5_3_gray_4.avif",
      ],
      0xffC0C0C0: [
        "assets/img/jacketsCoats5_3_silver_1.avif",
        "assets/img/jacketsCoats5_3_silver_2.avif",
        "assets/img/jacketsCoats5_3_silver_3.avif",
        "assets/img/jacketsCoats5_3_silver_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 5_4",
    "name": "70s Reversible Oversized Bomber Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 5",
    "color": {
      0xffFFC0CB: [
        "assets/img/jacketsCoats5_4_pink_1.avif",
        "assets/img/jacketsCoats5_4_pink_2.avif",
        "assets/img/jacketsCoats5_4_pink_3.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 6_1",
    "name": "Adicolor Trench Coat Twill",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 6",
    "color": {
      0xffE5C8A8: [
        "assets/img/jacketsCoats6_1_desertSand_1.avif",
        "assets/img/jacketsCoats6_1_desertSand_2.avif",
        "assets/img/jacketsCoats6_1_desertSand_3.avif",
        "assets/img/jacketsCoats6_1_desertSand_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 6_2",
    "name": "ASOS DESIGN hooded short trench coat in navy",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 6",
    "color": {
      0xff0000FF: [
        "assets/img/jacketsCoats6_2_blue_1.avif",
        "assets/img/jacketsCoats6_2_blue_2.avif",
        "assets/img/jacketsCoats6_2_blue_3.avif",
        "assets/img/jacketsCoats6_2_blue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 6_3",
    "name": "Jack & Jones cotton trench coat in beige",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 6",
    "color": {
      0xffC0C0C0: [
        "assets/img/jacketsCoats6_3_silver_1.avif",
        "assets/img/jacketsCoats6_3_silver_2.avif",
        "assets/img/jacketsCoats6_3_silver_3.avif",
        "assets/img/jacketsCoats6_3_silver_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 6_4",
    "name": "ASOS DESIGN Premium real leather trench coat in black",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 6",
    "color": {
      0xff000000: [
        "assets/img/jacketsCoats6_4_black_1.avif",
        "assets/img/jacketsCoats6_4_black_2.avif",
        "assets/img/jacketsCoats6_4_black_3.avif",
        "assets/img/jacketsCoats6_4_black_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 7_1",
    "name": "LATEST CHIKAN Men's Traditional Cotton",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 7",
    "color": {
      0xff808080: [
        "assets/img/jacketsCoats7_1_gray_1.jpg",
        "assets/img/jacketsCoats7_1_gray_2.jpg",
        "assets/img/jacketsCoats7_1_gray_3.jpg",
        "assets/img/jacketsCoats7_1_gray_4.jpg",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 7_2",
    "name":
        "ROCKSY Bandi Modi Koti, Nehru Jacket for Men, Cotton Waistcoat for All Occasion: ",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 7",
    "color": {
      0xff808080: [
        "assets/img/jacketsCoats7_2_blue_1.jpg",
        "assets/img/jacketsCoats7_2_blue_2.jpg",
        "assets/img/jacketsCoats7_2_blue_3.jpg",
        "assets/img/jacketsCoats7_2_blue_4.jpg",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 7_3",
    "name": "Veera Paridhaan Plain Chinese Collar Sleeveless Cotton Poly ",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 7",
    "color": {
      0xff000000: [
        "assets/img/jacketsCoats7_3_black_1.jpg",
        "assets/img/jacketsCoats7_3_black_2.jpg",
        "assets/img/jacketsCoats7_3_black_3.jpg",
        "assets/img/jacketsCoats7_3_black_4.jpg",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 8_1",
    "name": "Mexico Beckenbauer Track Top",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 8",
    "color": {
      0xff00FF00: [
        "assets/img/jacketsCoats8_1_green_1.avif",
        "assets/img/jacketsCoats8_1_green_2.avif",
        "assets/img/jacketsCoats8_1_green_3.avif",
        "assets/img/jacketsCoats8_1_green_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 8_2",
    "name": "Z.N.E. Full-Zip Hooded Track Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 8",
    "color": {
      0xffFF0000: [
        "assets/img/jacketsCoats8_2_red_1.avif",
        "assets/img/jacketsCoats8_2_red_2.avif",
        "assets/img/jacketsCoats8_2_red_3.avif",
        "assets/img/jacketsCoats8_2_red_4.avif",
      ],
      0xffFFFFFF: [
        "assets/img/jacketsCoats8_2_white_1.avif",
        "assets/img/jacketsCoats8_2_white_2.avif",
        "assets/img/jacketsCoats8_2_white_3.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 8_3",
    "name": "Adicolor Classics Firebird Track Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 8",
    "color": {
      0xff0000FF: [
        "assets/img/jacketsCoats8_3_blue_1.avif",
        "assets/img/jacketsCoats8_3_blue_2.avif",
        "assets/img/jacketsCoats8_3_blue_3.avif",
        "assets/img/jacketsCoats8_3_blue_4.avif",
      ],
      0xff00FF00: [
        "assets/img/jacketsCoats8_3_green_1.avif",
        "assets/img/jacketsCoats8_3_green_2.avif",
        "assets/img/jacketsCoats8_3_green_3.avif",
        "assets/img/jacketsCoats8_3_green_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "jackets & coats 8_4",
    "name": "J NP TTOP",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "JACKETS & COATS",
    "sub_category_id": "Jackets & Coats 8",
    "color": {
      0xffFFFF00: [
        "assets/img/jacketsCoats8_4_yellow_1.avif",
        "assets/img/jacketsCoats8_4_yellow_2.avif",
        "assets/img/jacketsCoats8_4_yellow_3.avif",
        "assets/img/jacketsCoats8_4_yellow_4.avif",
      ],
      0xff0000FF: [
        "assets/img/jacketsCoats8_4_blue_1.avif",
        "assets/img/jacketsCoats8_4_blue_2.avif",
        "assets/img/jacketsCoats8_4_blue_3.avif",
        "assets/img/jacketsCoats8_4_blue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  //HOODIES & SWEATSHIRTS
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 1_1",
    "name": "Trefoil Essentials Hoodie",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 1",
    "color": {
      0xff000000: [
        "assets/img/hoodieSweatshirts1_1_black_1.avif",
        "assets/img/hoodieSweatshirts1_1_black_2.avif",
        "assets/img/hoodieSweatshirts1_1_black_3.avif",
        "assets/img/hoodieSweatshirts1_1_black_4.avif",
      ],
      0xffFFC0CB: [
        "assets/img/hoodieSweatshirts1_1_pink_1.avif",
        "assets/img/hoodieSweatshirts1_1_pink_2.avif",
        "assets/img/hoodieSweatshirts1_1_pink_3.avif",
        "assets/img/hoodieSweatshirts1_1_pink_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Best Sellers",
    "product_id": "hoodies & sweatshirts 1_2",
    "name": "Adicolor Neuclassics Hoodie",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 1",
    "color": {
      0xff000000: [
        "assets/img/hoodieSweatshirts1_2_black_1.avif",
        "assets/img/hoodieSweatshirts1_2_black_2.avif",
        "assets/img/hoodieSweatshirts1_2_black_3.avif",
        "assets/img/hoodieSweatshirts1_2_black_4.avif",
      ],
      0xffFFC0CB: [
        "assets/img/hoodieSweatshirts1_2_green_1.avif",
        "assets/img/hoodieSweatshirts1_2_green_2.avif",
        "assets/img/hoodieSweatshirts1_2_green_3.avif",
        "assets/img/hoodieSweatshirts1_2_green_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 1_3",
    "name": "Trefoil Essentials Hoodie",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 1",
    "color": {
      // 0xff800080: [
      //   "assets/img/hoodieSweatshirts1_3_purple_1.avif",
      //   "assets/img/hoodieSweatshirts1_3_purple_2.avif",
      //   "assets/img/hoodieSweatshirts1_3_purple_3.avif",
      //   "assets/img/hoodieSweatshirts1_3_purple_4.avif",
      // ],
      0xff808080: [
        "assets/img/hoodieSweatshirts1_3_grey_1.avif",
        "assets/img/hoodieSweatshirts1_3_grey_2.avif",
        "assets/img/hoodieSweatshirts1_3_grey_3.avif",
        "assets/img/hoodieSweatshirts1_3_grey_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "D&S Exclusives",
    "product_id": "hoodies & sweatshirts 1_4",
    "name": "Trefoil Essentials Hoodie",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 1",
    "color": {
      0xff808080: [
        "assets/img/hoodieSweatshirts1_3_grey_1.avif",
        "assets/img/hoodieSweatshirts1_3_grey_2.avif",
        "assets/img/hoodieSweatshirts1_3_grey_3.avif",
        "assets/img/hoodieSweatshirts1_3_grey_4.avif",
      ],
      0xff800080: [
        "assets/img/hoodieSweatshirts1_3_purple_1.avif",
        "assets/img/hoodieSweatshirts1_3_purple_2.avif",
        "assets/img/hoodieSweatshirts1_3_purple_3.avif",
        "assets/img/hoodieSweatshirts1_3_purple_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  // {
  //   "featured": "New Arrivals",
  //   "product_id": "hoodies & sweatshirts 1_5",
  //   "name": "Trefoil Essentials Hoodie",
  //   "price": 50000,
  //   "realprice": 55000,
  //   "discount": 10,
  //   "title":
  //       "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
  //   "description":
  //       "This product has sustainability features recognized by trusted certifications.",
  //   "category": "HOODIES & SWEATSHIRTS",
  //   "sub_category_id": "Hoodies & Sweatshirts 1",
  //   "color": {
  //     0xff800080: [
  //       "assets/img/hoodieSweatshirts1_3_purple_1.avif",
  //       "assets/img/hoodieSweatshirts1_3_purple_2.avif",
  //       "assets/img/hoodieSweatshirts1_3_purple_3.avif",
  //       "assets/img/hoodieSweatshirts1_3_purple_4.avif",
  //     ],
  //     0xff808080: [
  //       "assets/img/hoodieSweatshirts1_3_grey_1.avif",
  //       "assets/img/hoodieSweatshirts1_3_grey_2.avif",
  //       "assets/img/hoodieSweatshirts1_3_grey_3.avif",
  //       "assets/img/hoodieSweatshirts1_3_grey_4.avif",
  //     ],
  //   },
  //   "size": ["S", "M", "L", "XL"],
  //   "reviews": [
  //     {
  //       "profile_pic":
  //           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
  //       "name": "John Doe",
  //       "date": "12/1/2023",
  //       "review":
  //           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
  //       "reviews_img": [
  //         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
  //         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
  //         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
  //         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
  //       ]
  //     },
  //   ],
  //   "attributes": {
  //     "Material": "Stainless Steel",
  //     "Water Resistance": "50 meters",
  //     "Movement": "Quartz",
  //     "Color": "Silver",
  //     "Item id": "WATCH001"
  //   },
  // },
  {
    "featured": "Sales",
    "product_id": "hoodies & sweatshirts 2_1",
    "name": "Trefoil Essentials Crew Sweatshirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 2",
    "color": {
      0xff800080: [
        "assets/img/hoodieSweatshirts2_1_purple_1.avif",
        "assets/img/hoodieSweatshirts2_1_purple_2.avif",
        "assets/img/hoodieSweatshirts2_1_purple_3.avif",
        "assets/img/hoodieSweatshirts2_1_purple_4.avif",
      ],
      0xff0000FF: [
        "assets/img/hoodieSweatshirts2_1_blue_1.avif",
        "assets/img/hoodieSweatshirts2_1_blue_2.avif",
        "assets/img/hoodieSweatshirts2_1_blue_3.avif",
        "assets/img/hoodieSweatshirts2_1_blue_4.avif",
      ],
      0xff808080: [
        "assets/img/hoodieSweatshirts2_1_grey_1.avif",
        "assets/img/hoodieSweatshirts2_1_grey_2.avif",
        "assets/img/hoodieSweatshirts2_1_grey_3.avif",
        "assets/img/hoodieSweatshirts2_1_grey_4.avif",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "What's Upcoming?",
    "product_id": "hoodies & sweatshirts 2_2",
    "name": "Trefoil Essentials Crew Sweatshirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 2",
    "color": {
      0xff0000FF: [
        "assets/img/hoodieSweatshirts2_1_blue_1.avif",
        "assets/img/hoodieSweatshirts2_1_blue_2.avif",
        "assets/img/hoodieSweatshirts2_1_blue_3.avif",
        "assets/img/hoodieSweatshirts2_1_blue_4.avif",
      ],
      0xff800080: [
        "assets/img/hoodieSweatshirts2_1_purple_1.avif",
        "assets/img/hoodieSweatshirts2_1_purple_2.avif",
        "assets/img/hoodieSweatshirts2_1_purple_3.avif",
        "assets/img/hoodieSweatshirts2_1_purple_4.avif",
      ],
      0xff808080: [
        "assets/img/hoodieSweatshirts2_1_grey_1.avif",
        "assets/img/hoodieSweatshirts2_1_grey_2.avif",
        "assets/img/hoodieSweatshirts2_1_grey_3.avif",
        "assets/img/hoodieSweatshirts2_1_grey_4.avif",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Offers",
    "product_id": "hoodies & sweatshirts 2_3",
    "name": "Trefoil Essentials Crew Sweatshirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 2",
    "color": {
      0xff808080: [
        "assets/img/hoodieSweatshirts2_1_grey_1.avif",
        "assets/img/hoodieSweatshirts2_1_grey_2.avif",
        "assets/img/hoodieSweatshirts2_1_grey_3.avif",
        "assets/img/hoodieSweatshirts2_1_grey_4.avif",
      ],
      0xff0000FF: [
        "assets/img/hoodieSweatshirts2_1_blue_1.avif",
        "assets/img/hoodieSweatshirts2_1_blue_2.avif",
        "assets/img/hoodieSweatshirts2_1_blue_3.avif",
        "assets/img/hoodieSweatshirts2_1_blue_4.avif",
      ],
      0xff800080: [
        "assets/img/hoodieSweatshirts2_1_purple_1.avif",
        "assets/img/hoodieSweatshirts2_1_purple_2.avif",
        "assets/img/hoodieSweatshirts2_1_purple_3.avif",
        "assets/img/hoodieSweatshirts2_1_purple_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 2_4",
    "name": "Essentials French Terry 3-Stripes Full-Zip Hoodie",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 2",
    "color": {
      0xff000000: [
        "assets/img/hoodieSweatshirts2_4_black_1.avif",
        "assets/img/hoodieSweatshirts2_4_black_2.avif",
      ],
      0xff0000FF: [
        "assets/img/hoodieSweatshirts2_4_blue_1.avif",
        "assets/img/hoodieSweatshirts2_4_blue_2.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 2_5",
    "name": "Trefoil Essentials Crewneck",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 2",
    "color": {
      0xffFF0000: [
        "assets/img/hoodieSweatshirts2_5_red_1.avif",
        "assets/img/hoodieSweatshirts2_5_red_2.avif",
      ],
      0xffC0C0C0: [
        "assets/img/hoodieSweatshirts2_5_silver_1.avif",
        "assets/img/hoodieSweatshirts2_5_silver_2.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 3_1",
    "name": "Adicolor 3-Stripes Teddy Fleece Hoodie",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 3",
    "color": {
      0xffE5C8A8: [
        "assets/img/hoodieSweatshirts3_1_desertSand_1.avif",
        "assets/img/hoodieSweatshirts3_1_desertSand_2.avif",
        "assets/img/hoodieSweatshirts3_1_desertSand_2.avif",
      ],
      0xff00FF00: [
        "assets/img/hoodieSweatshirts3_1_green_1.avif",
        "assets/img/hoodieSweatshirts3_1_green_2.avif",
        "assets/img/hoodieSweatshirts3_1_green_3.avif",
        "assets/img/hoodieSweatshirts3_1_green_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 3_2",
    "name": "ALL SZN Fleece Hoodie",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 3",
    "color": {
      0xff000000: [
        "assets/img/hoodieSweatshirts3_2_black_1.avif",
        "assets/img/hoodieSweatshirts3_2_black_2.avif",
        "assets/img/hoodieSweatshirts3_2_black_3.avif",
        "assets/img/hoodieSweatshirts3_2_black_4.avif",
      ],
      0xff00FF00: [
        "assets/img/hoodieSweatshirts3_2_green_1.avif",
        "assets/img/hoodieSweatshirts3_2_green_2.avif",
        "assets/img/hoodieSweatshirts3_2_green_3.avif",
        "assets/img/hoodieSweatshirts3_2_green_4.avif",
      ],
      0xffFFC0CB: [
        "assets/img/hoodieSweatshirts3_2_pink_1.avif",
        "assets/img/hoodieSweatshirts3_2_pink_2.avif",
        "assets/img/hoodieSweatshirts3_2_pink_3.avif",
        "assets/img/hoodieSweatshirts3_2_pink_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 3_3",
    "name": "ALL SZN Fleece Hoodie",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 3",
    "color": {
      0xffFFC0CB: [
        "assets/img/hoodieSweatshirts3_2_pink_1.avif",
        "assets/img/hoodieSweatshirts3_2_pink_2.avif",
        "assets/img/hoodieSweatshirts3_2_pink_3.avif",
        "assets/img/hoodieSweatshirts3_2_pink_4.avif",
      ],
      0xff000000: [
        "assets/img/hoodieSweatshirts3_2_black_1.avif",
        "assets/img/hoodieSweatshirts3_2_black_2.avif",
        "assets/img/hoodieSweatshirts3_2_black_3.avif",
        "assets/img/hoodieSweatshirts3_2_black_4.avif",
      ],
      0xff00FF00: [
        "assets/img/hoodieSweatshirts3_2_green_1.avif",
        "assets/img/hoodieSweatshirts3_2_green_2.avif",
        "assets/img/hoodieSweatshirts3_2_green_3.avif",
        "assets/img/hoodieSweatshirts3_2_green_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 3_4",
    "name": "ALL SZN Fleece Hoodie",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 3",
    "color": {
      0xff00FF00: [
        "assets/img/hoodieSweatshirts3_2_green_1.avif",
        "assets/img/hoodieSweatshirts3_2_green_2.avif",
        "assets/img/hoodieSweatshirts3_2_green_3.avif",
        "assets/img/hoodieSweatshirts3_2_green_4.avif",
      ],
      0xffFFC0CB: [
        "assets/img/hoodieSweatshirts3_2_pink_1.avif",
        "assets/img/hoodieSweatshirts3_2_pink_2.avif",
        "assets/img/hoodieSweatshirts3_2_pink_3.avif",
        "assets/img/hoodieSweatshirts3_2_pink_4.avif",
      ],
      0xff000000: [
        "assets/img/hoodieSweatshirts3_2_black_1.avif",
        "assets/img/hoodieSweatshirts3_2_black_2.avif",
        "assets/img/hoodieSweatshirts3_2_black_3.avif",
        "assets/img/hoodieSweatshirts3_2_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 3_5",
    "name": "Adicolor 3-Stripes Teddy Fleece Hoodie",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 3",
    "color": {
      0xff00FF00: [
        "assets/img/hoodieSweatshirts3_5_green_1.avif",
        "assets/img/hoodieSweatshirts3_5_green_2.avif",
        "assets/img/hoodieSweatshirts3_5_green_3.avif",
        "assets/img/hoodieSweatshirts3_5_green_4.avif",
      ],
      0xffE5C8A8: [
        "assets/img/hoodieSweatshirts3_5_desertSand_1.avif",
        "assets/img/hoodieSweatshirts3_5_desertSand_2.avif",
        "assets/img/hoodieSweatshirts3_5_desertSand_3.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 4_1",
    "name": "Logo Sweatshirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 4",
    "color": {
      0xffE5C8A8: [
        "assets/img/hoodieSweatshirts4_1_desertSand_1.webp",
        "assets/img/hoodieSweatshirts4_1_desertSand_2.webp",
        "assets/img/hoodieSweatshirts4_1_desertSand_3.webp",
        "assets/img/hoodieSweatshirts4_1_desertSand_4.webp",
      ],
      0xff0000FF: [
        "assets/img/hoodieSweatshirts4_1_blue_1.webp",
        "assets/img/hoodieSweatshirts4_1_blue_2.webp",
        "assets/img/hoodieSweatshirts4_1_blue_3.webp",
        "assets/img/hoodieSweatshirts4_1_blue_4.webp",
      ],
      0xffC0C0C0: [
        "assets/img/hoodieSweatshirts4_1_silver_1.webp",
        "assets/img/hoodieSweatshirts4_1_silver_2.webp",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 4_2",
    "name": "Logo Sweatshirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 4",
    "color": {
      0xff0000FF: [
        "assets/img/hoodieSweatshirts4_1_blue_1.webp",
        "assets/img/hoodieSweatshirts4_1_blue_2.webp",
        "assets/img/hoodieSweatshirts4_1_blue_3.webp",
        "assets/img/hoodieSweatshirts4_1_blue_4.webp",
      ],
      0xffE5C8A8: [
        "assets/img/hoodieSweatshirts4_1_desertSand_1.webp",
        "assets/img/hoodieSweatshirts4_1_desertSand_2.webp",
        "assets/img/hoodieSweatshirts4_1_desertSand_3.webp",
        "assets/img/hoodieSweatshirts4_1_desertSand_4.webp",
      ],
      0xffC0C0C0: [
        "assets/img/hoodieSweatshirts4_1_silver_1.webp",
        "assets/img/hoodieSweatshirts4_1_silver_2.webp",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 4_3",
    "name": "Logo Sweatshirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 4",
    "color": {
      0xffC0C0C0: [
        "assets/img/hoodieSweatshirts4_1_silver_1.webp",
        "assets/img/hoodieSweatshirts4_1_silver_2.webp",
      ],
      0xff0000FF: [
        "assets/img/hoodieSweatshirts4_1_blue_1.webp",
        "assets/img/hoodieSweatshirts4_1_blue_2.webp",
        "assets/img/hoodieSweatshirts4_1_blue_3.webp",
        "assets/img/hoodieSweatshirts4_1_blue_4.webp",
      ],
      0xffE5C8A8: [
        "assets/img/hoodieSweatshirts4_1_desertSand_1.webp",
        "assets/img/hoodieSweatshirts4_1_desertSand_2.webp",
        "assets/img/hoodieSweatshirts4_1_desertSand_3.webp",
        "assets/img/hoodieSweatshirts4_1_desertSand_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 4_4",
    "name": "Plain Zip Sweatshirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 4",
    "color": {
      0xffE5C8A8: [
        "assets/img/hoodieSweatshirts4_4_desertSand_1.webp",
        "assets/img/hoodieSweatshirts4_4_desertSand_2.webp",
        "assets/img/hoodieSweatshirts4_4_desertSand_3.webp",
        "assets/img/hoodieSweatshirts4_4_desertSand_4.webp",
        "assets/img/hoodieSweatshirts4_4_desertSand_5.webp",
      ],
      0xff808080: [
        "assets/img/hoodieSweatshirts4_4_grey_1.webp",
        "assets/img/hoodieSweatshirts4_4_grey_2.webp",
        "assets/img/hoodieSweatshirts4_4_grey_3.webp",
        "assets/img/hoodieSweatshirts4_4_grey_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 4_5",
    "name": "Plain Sweatshirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 4",
    "color": {
      0xff0000FF: [
        "assets/img/hoodieSweatshirts4_5_blue_1.webp",
        "assets/img/hoodieSweatshirts4_5_blue_2.webp",
        "assets/img/hoodieSweatshirts4_5_blue_3.webp",
        "assets/img/hoodieSweatshirts4_5_blue_4.webp",
      ],
      0xffE5C8A8: [
        "assets/img/hoodieSweatshirts4_5_desertSand_1.webp",
        "assets/img/hoodieSweatshirts4_5_desertSand_2.webp",
        "assets/img/hoodieSweatshirts4_5_desertSand_3.webp",
        "assets/img/hoodieSweatshirts4_5_desertSand_4.webp",
      ],
      0xffADD8E6: [
        "assets/img/hoodieSweatshirts4_5_lightBlue_1.webp",
        "assets/img/hoodieSweatshirts4_5_lightBlue_2.webp",
        "assets/img/hoodieSweatshirts4_5_lightBlue_3.webp",
        "assets/img/hoodieSweatshirts4_5_lightBlue_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "hoodies & sweatshirts 4_6",
    "name": "Plain Sweatshirt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "HOODIES & SWEATSHIRTS",
    "sub_category_id": "Hoodies & Sweatshirts 4",
    "color": {
      0xffADD8E6: [
        "assets/img/hoodieSweatshirts4_5_lightBlue_1.webp",
        "assets/img/hoodieSweatshirts4_5_lightBlue_2.webp",
        "assets/img/hoodieSweatshirts4_5_lightBlue_3.webp",
        "assets/img/hoodieSweatshirts4_5_lightBlue_4.webp",
      ],
      0xff0000FF: [
        "assets/img/hoodieSweatshirts4_5_blue_1.webp",
        "assets/img/hoodieSweatshirts4_5_blue_2.webp",
        "assets/img/hoodieSweatshirts4_5_blue_3.webp",
        "assets/img/hoodieSweatshirts4_5_blue_4.webp",
      ],
      0xffE5C8A8: [
        "assets/img/hoodieSweatshirts4_5_desertSand_1.webp",
        "assets/img/hoodieSweatshirts4_5_desertSand_2.webp",
        "assets/img/hoodieSweatshirts4_5_desertSand_3.webp",
        "assets/img/hoodieSweatshirts4_5_desertSand_4.webp",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  //SHORTS
  {
    "featured": "New Arrivals",
    "product_id": "shorts 1_1",
    "name":
        "Men's Wrangler Authentics® Loose Fit Carpenter Short in Military Khaki",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 1",
    "color": {
      0xffC0C0C0: [
        "assets/img/shorts1_1_silver_1.webp",
        "assets/img/shorts1_1_silver_2.webp",
        "assets/img/shorts1_1_silver_3.webp",
        "assets/img/shorts1_1_silver_4.webp",
      ],
      0xff0000FF: [
        "assets/img/shorts1_1_blue_1.webp",
        "assets/img/shorts1_1_blue_2.webp",
        "assets/img/shorts1_1_blue_3.webp",
        "assets/img/shorts1_1_blue_4.webp",
      ],
    },
    "size": ["30", "32", "33", "34", "36", "38", "40"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 1_2",
    "name":
        "Wrangler® Men's Five Star Premium Denim Cargo Shorts in Medium Tint",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 1",
    "color": {
      0xff0000FF: [
        "assets/img/shorts1_2_blue_1.webp",
        "assets/img/shorts1_2_blue_2.webp",
        "assets/img/shorts1_2_blue_3.webp",
        "assets/img/shorts1_2_blue_4.webp",
      ],
    },
    "size": ["30", "32", "33", "34", "36", "38", "40"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 1_3",
    "name": "Men's Free To Stretch Denim Short in Mid Tint",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 1",
    "color": {
      0xffADD8E6: [
        "assets/img/shorts1_3_lightBlue_1.webp",
        "assets/img/shorts1_3_lightBlue_2.webp",
        "assets/img/shorts1_3_lightBlue_3.webp",
      ],
      0xff0000FF: [
        "assets/img/shorts1_3_blue_1.webp",
        "assets/img/shorts1_3_blue_2.webp",
        "assets/img/shorts1_3_blue_3.webp",
        "assets/img/shorts1_3_blue_4.webp",
      ],
    },
    "size": ["30", "32", "33", "34", "36", "38", "40"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 1_4",
    "name": "Wrangler Rugged Wear® Relaxed Fit Short in Vintage Indigo",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 1",
    "color": {
      0xffADD8E6: [
        "assets/img/shorts1_4_lightBlue_1.webp",
        "assets/img/shorts1_4_lightBlue_2.jpeg",
        "assets/img/shorts1_4_lightBlue_3.webp",
        "assets/img/shorts1_4_lightBlue_4.webp",
      ],
    },
    "size": ["30", "32", "33", "34", "36", "38", "40"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 1_5",
    "name": "Wrangler® RIGGS Workwear® Carpenter Short in Vintage Indigo",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 1",
    "color": {
      0xff808080: [
        "assets/img/shorts1_5_grey_1.webp",
        "assets/img/shorts1_5_grey_2.webp",
        "assets/img/shorts1_5_grey_3.jpeg",
        "assets/img/shorts1_5_grey_4.webp",
      ],
      0xffADD8E6: [
        "assets/img/shorts1_5_lightBlue_1.jpeg",
        "assets/img/shorts1_5_lightBlue_2.webp",
        "assets/img/shorts1_5_lightBlue_3.webp",
        "assets/img/shorts1_5_lightBlue_4.webp",
      ],
    },
    "size": ["30", "32", "33", "34", "36", "38", "40"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 2_1",
    "name": "Own The Run Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 2",
    "color": {
      0xffFFC0CB: [
        "assets/img/shorts2_1_pink_1.avif",
        "assets/img/shorts2_1_pink_2.avif",
        "assets/img/shorts2_1_pink_3.avif",
        "assets/img/shorts2_1_pink_4.avif",
      ],
      0xff000000: [
        "assets/img/shorts2_1_black_1.avif",
        "assets/img/shorts2_1_black_2.avif",
        "assets/img/shorts2_1_black_3.avif",
        "assets/img/shorts2_1_black_4.avif",
      ],
      0xff0000FF: [
        "assets/img/shorts2_1_blue_1.avif",
        "assets/img/shorts2_1_blue_2.avif",
        "assets/img/shorts2_1_blue_3.avif",
        "assets/img/shorts2_1_blue_4.avif",
      ],
    },
    "size": ["XS 5", "S 5", "M 5", "L 5", "XL 5", "2XL 5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 2_2",
    "name": "Anthony Edwards 1 Foundation Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 2",
    "color": {
      0xff800080: [
        "assets/img/shorts2_2_purple_1.avif",
        "assets/img/shorts2_2_purple_2.avif",
        "assets/img/shorts2_2_purple_3.avif",
        "assets/img/shorts2_2_purple_4.avif",
      ],
    },
    "size": ["XS 5", "S 5", "M 5", "L 5", "XL 5", "2XL 5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 2_3",
    "name": "Entrada 22 Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 2",
    "color": {
      0xff000000: [
        "assets/img/shorts2_3_black_1.avif",
        "assets/img/shorts2_3_black_2.avif",
        "assets/img/shorts2_3_black_3.avif",
        "assets/img/shorts2_3_black_4.avif",
      ],
      0xff808080: [
        "assets/img/shorts2_3_gray_1.avif",
        "assets/img/shorts2_3_gray_2.avif",
        "assets/img/shorts2_3_gray_3.avif",
        "assets/img/shorts2_3_gray_4.avif",
      ],
    },
    "size": ["XS 5", "S 5", "M 5", "L 5", "XL 5", "2XL 5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 2_4",
    "name": "Ultimate365 10-Inch Golf Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 2",
    "color": {
      0xff0000FF: [
        "assets/img/shorts2_4_blue_1.avif",
        "assets/img/shorts2_4_blue_2.avif",
        "assets/img/shorts2_4_blue_3.avif",
        "assets/img/shorts2_4_blue_4.avif",
      ],
      0xff000000: [
        "assets/img/shorts2_4_black_1.avif",
      ],
    },
    "size": ["XS 5", "S 5", "M 5", "L 5", "XL 5", "2XL 5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 2_5",
    "name": "Trefoil Essentials Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 2",
    "color": {
      0xffA52A2A: [
        "assets/img/shorts2_5_brown_1.avif",
        "assets/img/shorts2_5_brown_2.avif",
        "assets/img/shorts2_5_brown_3.avif",
        "assets/img/shorts2_5_brown_4.avif",
      ],
      0xff0000FF: [
        "assets/img/shorts2_5_blue_1.avif",
        "assets/img/shorts2_5_blue_2.avif",
        "assets/img/shorts2_5_blue_3.avif",
        "assets/img/shorts2_5_blue_4.avif",
      ],
    },
    "size": ["XS 5", "S 5", "M 5", "L 5", "XL 5", "2XL 5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 3_1",
    "name": "New York City Men's Running Split Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 3",
    "color": {
      0xffFFA500: [
        "assets/img/shorts3_1_orange_1.avif",
        "assets/img/shorts3_1_orange_2.avif",
        "assets/img/shorts3_1_orange_3.avif",
        "assets/img/shorts3_1_orange_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 3_2",
    "name": "Designed for Training Pro Series Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 3",
    "color": {
      0xff0000FF: [
        "assets/img/shorts3_2_blue_1.avif",
        "assets/img/shorts3_2_blue_2.avif",
        "assets/img/shorts3_2_blue_3.avif",
        "assets/img/shorts3_2_blue_4.avif",
      ],
      0xff808080: [
        "assets/img/shorts3_2_gray_1.avif",
        "assets/img/shorts3_2_gray_2.avif",
        "assets/img/shorts3_2_gray_3.avif",
        "assets/img/shorts3_2_gray_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 3_3",
    "name": "Ultimate365 8.5-Inch Golf Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 3",
    "color": {
      0xffFFA500: [
        "assets/img/shorts3_3_orange_1.avif",
        "assets/img/shorts3_3_orange_2.avif",
        "assets/img/shorts3_3_orange_3.avif",
        "assets/img/shorts3_3_orange_4.avif",
      ],
      0xffFFC0CB: [
        "assets/img/shorts3_3_pink_1.avif",
        "assets/img/shorts3_3_pink_2.avif",
        "assets/img/shorts3_3_pink_3.avif",
        "assets/img/shorts3_3_pink_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 3_4",
    "name": "adidas Pro Block Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 3",
    "color": {
      0xff000000: [
        "assets/img/shorts3_4_black_1.avif",
        "assets/img/shorts3_4_black_2.avif",
        "assets/img/shorts3_4_black_3.avif",
        "assets/img/shorts3_4_black_4.avif",
      ],
      0xffC0C0C0: [
        "assets/img/shorts3_4_silver_1.avif",
        "assets/img/shorts3_4_silver_2.avif",
        "assets/img/shorts3_4_silver_3.avif",
        "assets/img/shorts3_4_silver_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 3_5",
    "name": "Adizero Running Split Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 3",
    "color": {
      0xffFFFF00: [
        "assets/img/shorts3_5_yellow_1.avif",
        "assets/img/shorts3_5_yellow_2.avif",
        "assets/img/shorts3_5_yellow_3.avif",
        "assets/img/shorts3_5_yellow_4.avif",
      ],
      0xff0000FF: [
        "assets/img/shorts3_5_blue_1.avif",
        "assets/img/shorts3_5_blue_2.avif",
        "assets/img/shorts3_5_blue_3.avif",
        "assets/img/shorts3_5_blue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "shorts 3_6",
    "name": "Adicolor 3-Stripes Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHORTS",
    "sub_category_id": "Shorts 3",
    "color": {
      0xff808080: [
        "assets/img/shorts3_6_gray_1.avif",
        "assets/img/shorts3_6_gray_2.avif",
        "assets/img/shorts3_6_gray_3.avif",
        "assets/img/shorts3_6_gray_4.avif",
      ],
      0xffADD8E6: [
        "assets/img/shorts3_6_lightBlue_1.avif",
        "assets/img/shorts3_6_lightBlue_2.avif",
        "assets/img/shorts3_6_lightBlue_3.avif",
        "assets/img/shorts3_6_lightBlue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  //TRACKSUITS
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 1_1",
    "name": "Adicolor Classics Firebird Track Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 1",
    "color": {
      0xff800080: [
        "assets/img/tracksuits1_1_purple_1.avif",
        "assets/img/tracksuits1_1_purple_2.avif",
        "assets/img/tracksuits1_1_purple_3.avif",
        "assets/img/tracksuits1_1_purple_4.avif",
      ],
      0xffFFFF00: [
        "assets/img/tracksuits1_1_yellow_1.avif",
        "assets/img/tracksuits1_1_yellow_2.avif",
        "assets/img/tracksuits1_1_yellow_3.avif",
        "assets/img/tracksuits1_1_yellow_4.avif",
      ],
      0xffE5C8A8: [
        "assets/img/tracksuits1_1_desertSand_1.avif",
        "assets/img/tracksuits1_1_desertSand_2.avif",
        "assets/img/tracksuits1_1_desertSand_3.avif",
        "assets/img/tracksuits1_1_desertSand_4.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 1_2",
    "name": "Adicolor Baggy Fit Firebird Track Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 1",
    "color": {
      0xff00FF00: [
        "assets/img/tracksuits1_2_green_1.avif",
        "assets/img/tracksuits1_2_green_2.avif",
        "assets/img/tracksuits1_2_green_3.avif",
        "assets/img/tracksuits1_2_green_4.avif",
      ],
      0xff0000FF: [
        "assets/img/tracksuits1_2_blue_1.avif",
        "assets/img/tracksuits1_2_blue_2.avif",
        "assets/img/tracksuits1_2_blue_3.avif",
        "assets/img/tracksuits1_2_blue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 1_3",
    "name": "Adicolor Firebird Loose Track Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 1",
    "color": {
      0xffFFC0CB: [
        "assets/img/tracksuits1_3_pink_1.avif",
        "assets/img/tracksuits1_3_pink_2.avif",
        "assets/img/tracksuits1_3_pink_3.avif",
        "assets/img/tracksuits1_3_pink_4.avif",
      ],
      0xffE5C8A8: [
        "assets/img/tracksuits1_3_desertSand_1.avif",
        "assets/img/tracksuits1_3_desertSand_2.avif",
        "assets/img/tracksuits1_3_desertSand_3.avif",
        "assets/img/tracksuits1_3_desertSand_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 1_4",
    "name": "Adicolor Classics Firebird Track Pants (Plus Size)",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 1",
    "color": {
      0xff00FF00: [
        "assets/img/tracksuits1_4_green_1.avif",
        "assets/img/tracksuits1_4_green_2.avif",
        "assets/img/tracksuits1_4_green_3.avif",
        "assets/img/tracksuits1_4_green_4.avif",
      ],
      0xff000000: [
        "assets/img/tracksuits1_4_black_1.avif",
        "assets/img/tracksuits1_4_black_2.avif",
        "assets/img/tracksuits1_4_black_3.avif",
        "assets/img/tracksuits1_4_black_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 2_1",
    "name": "MONTIREX Peak Grid 1/4 Zip Top",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 2",
    "color": {
      0xff0000FF: [
        "assets/img/tracksuits2_1_blue_1.webp",
        "assets/img/tracksuits2_1_blue_2.webp",
        "assets/img/tracksuits2_1_blue_3.webp",
        "assets/img/tracksuits2_1_blue_4.webp",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 2_2",
    "name": "adidas Originals SST Track Top",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 2",
    "color": {
      0xff00FF00: [
        "assets/img/tracksuits2_2_green_1.webp",
        "assets/img/tracksuits2_2_green_2.webp",
        "assets/img/tracksuits2_2_green_3.webp",
        "assets/img/tracksuits2_2_green_4.webp",
      ],
      0xffADD8E6: [
        "assets/img/tracksuits2_2_lightBlue_1.webp",
        "assets/img/tracksuits2_2_lightBlue_2.webp",
        "assets/img/tracksuits2_2_lightBlue_3.webp",
        "assets/img/tracksuits2_2_lightBlue_4.webp",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 2_3",
    "name":
        "adidas Originals Adicolor Classics Beckenbauer Primeblue Track Top",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 2",
    "color": {
      0xffA52A2A: [
        "assets/img/tracksuits2_3_brown_1.webp",
        "assets/img/tracksuits2_3_brown_2.webp",
        "assets/img/tracksuits2_3_brown_3.webp",
        "assets/img/tracksuits2_3_brown_4.webp",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 2_4",
    "name": "adidas Originals SST Track Top",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 2",
    "color": {
      0xffFFFFFF: [
        "assets/img/tracksuits2_4_white_1.webp",
        "assets/img/tracksuits2_4_white_2.webp",
        "assets/img/tracksuits2_4_white_3.webp",
        "assets/img/tracksuits2_4_white_4.webp",
      ],
      0xff000000: [
        "assets/img/tracksuits2_4_black_1.webp",
        "assets/img/tracksuits2_4_black_2.webp",
        "assets/img/tracksuits2_4_black_3.webp",
        "assets/img/tracksuits2_4_black_4.webp",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 3_1",
    "name": "Z.N.E. Full-Zip Hooded Track Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 3",
    "color": {
      0xff000000: [
        "assets/img/tracksuits3_1_black_1.avif",
        "assets/img/tracksuits3_1_black_2.avif",
        "assets/img/tracksuits3_1_black_3.avif",
        "assets/img/tracksuits3_1_black_4.avif",
      ],
      0xffFFFFFF: [
        "assets/img/tracksuits3_1_white_1.avif",
        "assets/img/tracksuits3_1_white_2.avif",
        "assets/img/tracksuits3_1_white_3.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 3_2",
    "name": "Manchester United George Best Track Top",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 3",
    "color": {
      0xff0000FF: [
        "assets/img/tracksuits3_2_blue_1.avif",
        "assets/img/tracksuits3_2_blue_2.avif",
        "assets/img/tracksuits3_2_blue_3.avif",
        "assets/img/tracksuits3_2_blue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 3_3",
    "name": "Z.N.E. Premium Full-Zip Hooded Track Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 3",
    "color": {
      0xffFFFFFF: [
        "assets/img/tracksuits3_3_white_1.avif",
        "assets/img/tracksuits3_3_white_2.avif",
        "assets/img/tracksuits3_3_white_3.avif",
        "assets/img/tracksuits3_3_white_4.avif",
      ],
      0xff000000: [
        "assets/img/tracksuits3_3_black_1.avif",
        "assets/img/tracksuits3_3_black_2.avif",
        "assets/img/tracksuits3_3_black_3.avif",
        "assets/img/tracksuits3_3_black_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 3_4",
    "name": "Tiro 23 League Training Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 3",
    "color": {
      0xffFFFFFF: [
        "assets/img/tracksuits3_4_white_1.avif",
      ],
      0xff000000: [
        "assets/img/tracksuits3_4_black_1.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 4_1",
    "name": "Adicolor 3-Stripes Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 4",
    "color": {
      0xff0000FF: [
        "assets/img/tracksuits4_1_blue_1.avif",
        "assets/img/tracksuits4_1_blue_2.avif",
        "assets/img/tracksuits4_1_blue_3.avif",
        "assets/img/tracksuits4_1_blue_4.avif",
      ],
      0xffC0C0C0: [
        "assets/img/tracksuits4_1_silver_1.avif",
        "assets/img/tracksuits4_1_silver_2.avif",
        "assets/img/tracksuits4_1_silver_3.avif",
        "assets/img/tracksuits4_1_silver_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 4_2",
    "name": "Essentials Warm-Up Tapered 3-Stripes Track Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 4",
    "color": {
      0xff000000: [
        "assets/img/tracksuits4_2_black_1.avif",
        "assets/img/tracksuits4_2_black_2.avif",
        "assets/img/tracksuits4_2_black_3.avif",
        "assets/img/tracksuits4_2_black_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 4_3",
    "name": "Essentials 3-Stripes Animal-Print 7/8 Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 4",
    "color": {
      0xff0000FF: [
        "assets/img/tracksuits4_3_blue_1.avif",
        "assets/img/tracksuits4_3_blue_2.avif",
        "assets/img/tracksuits4_3_blue_3.avif",
        "assets/img/tracksuits4_3_blue_4.avif",
      ],
      0xffA52A2A: [
        "assets/img/tracksuits4_3_brown_1.avif",
        "assets/img/tracksuits4_3_brown_2.avif",
        "assets/img/tracksuits4_3_brown_3.avif",
        "assets/img/tracksuits4_3_brown_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "tracksuits 4_4",
    "name": "Essentials 3-Stripes Animal-Print 7/8 Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "TRACKSUITS",
    "sub_category_id": "Tracksuits 4",
    "color": {
      0xffA52A2A: [
        "assets/img/tracksuits4_3_brown_2.avif",
        "assets/img/tracksuits4_3_brown_1.avif",
        "assets/img/tracksuits4_3_brown_3.avif",
        "assets/img/tracksuits4_3_brown_4.avif",
      ],
      0xff0000FF: [
        "assets/img/tracksuits4_3_blue_1.avif",
        "assets/img/tracksuits4_3_blue_2.avif",
        "assets/img/tracksuits4_3_blue_3.avif",
        "assets/img/tracksuits4_3_blue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  //ACCESSORIES
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 1_1",
    "name": "Athletic Cushioned Crew Socks 6 Pairs",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 1",
    "color": {
      0xff0000FF: [
        "assets/img/accessories1_1_blue_1.jpg",
        "assets/img/accessories1_1_blue_2.jpg",
        "assets/img/accessories1_1_blue_3.avif",
        "assets/img/accessories1_1_blue_4.avif",
      ],
      0xffFFFFFF: [
        "assets/img/accessories1_1_white_1.avif",
      ],
      0xff000000: [
        "assets/img/accessories1_1_black_1.avif",
        "assets/img/accessories1_1_black_2.jpg",
        "assets/img/accessories1_1_black_3.jpg",
        "assets/img/accessories1_1_black_4.jpg",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Best Sellers",
    "product_id": "Accessories 1_2",
    "name": "Samba Mid Ankle Socks 2 Pairs",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 1",
    "color": {
      0xffFFFFFF: [
        "assets/img/accessories1_2_white_1.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "D&S Exclusives",
    "product_id": "Accessories 1_3",
    "name": "Originals Trefoil 2.0 3-Pack High Quarter Socks",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 1",
    "color": {
      0xffFFFFFF: [
        "assets/img/accessories1_3_white_1.avif",
        "assets/img/accessories1_3_white_2.avif",
        "assets/img/accessories1_3_white_3.avif",
      ],
      0xffFFC0CB: [
        "assets/img/accessories1_3_pink_1.avif",
        "assets/img/accessories1_3_pink_2.avif",
        "assets/img/accessories1_3_pink_3.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Sales",
    "product_id": "Accessories 1_4",
    "name": "Kseniaschnaider Triple Cuff Socks 1 Pair",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 1",
    "color": {
      0xff800080: [
        "assets/img/accessories1_4_purple_1.avif",
        "assets/img/accessories1_4_purple_2.jpg",
        "assets/img/accessories1_4_purple_3.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "What's Upcoming?",
    "product_id": "Accessories 2_1",
    "name": "Reversible Webbing Belt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 2",
    "color": {
      0xff808080: [
        "assets/img/accessories2_1_gray_1.avif",
        "assets/img/accessories2_1_gray_2.avif",
        "assets/img/accessories2_1_gray_3.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Offers",
    "product_id": "Accessories 2_2",
    "name": "Braided Stretch Belt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 2",
    "color": {
      0xffA52A2A: [
        "assets/img/accessories2_2_brown_1.avif",
        "assets/img/accessories2_2_brown_2.avif",
        "assets/img/accessories2_2_brown_3.avif",
      ],
      0xff0000FF: [
        "assets/img/accessories2_2_blue_1.avif",
        "assets/img/accessories2_2_blue_2.avif",
        "assets/img/accessories2_2_blue_3.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 2_3",
    "name": "Y-3 Belt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 2",
    "color": {
      0xffFFFFFF: [
        "assets/img/accessories2_3_white_1.avif",
        "assets/img/accessories2_3_white_2.avif",
        "assets/img/accessories2_3_white_3.avif",
        "assets/img/accessories2_3_white_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 2_4",
    "name": "SILVER ADIDAS Belt",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 2",
    "color": {
      0xffC0C0C0: [
        "assets/img/accessories2_4_silver_1.avif",
        "assets/img/accessories2_4_silver_2.avif",
        "assets/img/accessories2_4_silver_3.jpg",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 3_1",
    "name": "Solid Bucket Hat",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 3",
    "color": {
      0xff000000: [
        "assets/img/accessories3_1_black_1.avif",
        "assets/img/accessories3_1_black_2.avif",
        "assets/img/accessories3_1_black_3.avif",
        "assets/img/accessories3_1_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 3_2",
    "name": "Vista Boonie Hat",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 3",
    "color": {
      0xffFFA500: [
        "assets/img/accessories3_2_orange_1.avif",
        "assets/img/accessories3_2_orange_2.avif",
        "assets/img/accessories3_2_orange_3.avif",
        "assets/img/accessories3_2_orange_4.avif",
      ],
      0xff000000: [
        "assets/img/accessories3_2_black_1.avif",
        "assets/img/accessories3_2_black_2.avif",
        "assets/img/accessories3_2_black_3.avif",
        "assets/img/accessories3_2_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 3_3",
    "name": "Superlite 3 Hat",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 3",
    "color": {
      0xff000000: [
        "assets/img/accessories3_3_black_1.avif",
        "assets/img/accessories3_3_black_2.avif",
        "assets/img/accessories3_3_black_3.avif",
        "assets/img/accessories3_3_black_4.avif",
      ],
      0xff808080: [
        "assets/img/accessories3_3_gray_1.avif",
        "assets/img/accessories3_3_gray_2.avif",
        "assets/img/accessories3_3_gray_3.avif",
        "assets/img/accessories3_3_gray_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 3_4",
    "name": "Five-Panel Trucker Cap",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 3",
    "color": {
      0xff000000: [
        "assets/img/accessories3_4_black_1.avif",
        "assets/img/accessories3_4_black_2.avif",
        "assets/img/accessories3_4_black_3.avif",
        "assets/img/accessories3_4_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 4_1",
    "name": "adidas by Stella McCartney Gym Sack",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 4",
    "color": {
      0xff000000: [
        "assets/img/accessories4_1_black_1.avif",
        "assets/img/accessories4_1_black_2.avif",
        "assets/img/accessories4_1_black_3.avif",
        "assets/img/accessories4_1_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 4_2",
    "name": "Defender Duffel Bag Medium",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 4",
    "color": {
      0xff0000FF: [
        "assets/img/accessories4_2_blue_1.avif",
        "assets/img/accessories4_2_blue_2.avif",
        "assets/img/accessories4_2_blue_3.avif",
      ],
      0xffFFC0CB: [
        "assets/img/accessories4_2_pink_1.avif",
        "assets/img/accessories4_2_pink_2.avif",
        "assets/img/accessories4_2_pink_3.avif",
      ],
      0xff00FF00: [
        "assets/img/accessories4_2_green_1.avif",
        "assets/img/accessories4_2_green_2.avif",
        "assets/img/accessories4_2_green_3.avif",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 4_3",
    "name": "Terrex Rain.Rdy Expedition Duffel Bag S - 50 L",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 4",
    "color": {
      0xffFFA500: [
        "assets/img/accessories4_3_orange_1.avif",
        "assets/img/accessories4_3_orange_2.avif",
        "assets/img/accessories4_3_orange_3.avif",
        "assets/img/accessories4_3_orange_4.avif",
      ],
      0xff000000: [
        "assets/img/accessories4_3_black_1.avif",
        "assets/img/accessories4_3_black_2.avif",
        "assets/img/accessories4_3_black_3.avif",
        "assets/img/accessories4_3_black_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 4_4",
    "name": "Terrex Rain.Rdy Expedition Duffel Bag S - 50 L",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 4",
    "color": {
      0xffFFFFFF: [
        "assets/img/accessories4_4_white_1.avif",
        "assets/img/accessories4_4_white_2.avif",
        "assets/img/accessories4_4_white_3.avif",
        "assets/img/accessories4_4_white_4.avif",
      ],
      0xff000000: [
        "assets/img/accessories4_4_black_1.avif",
        "assets/img/accessories4_4_black_2.avif",
        "assets/img/accessories4_4_black_3.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 5_1",
    "name":
        "ihuan Winter Waterproof Ski Gloves Men Women, Snow Warm Cycling Gloves Cold Weather, Driving Biking Running",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 5",
    "color": {
      0xff000000: [
        "assets/img/accessories5_1_black_1.jpg",
        "assets/img/accessories5_1_black_2.jpg",
        "assets/img/accessories5_1_black_3.jpg",
        "assets/img/accessories5_1_black_4.jpg",
      ],
      0xff808080: [
        "assets/img/accessories5_1_gray_1.jpg",
        "assets/img/accessories5_1_gray_2.jpg",
        "assets/img/accessories5_1_gray_3.jpg",
        "assets/img/accessories5_1_gray_4.jpg",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 5_2",
    "name": "Mechanix Wear",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 5",
    "color": {
      0xff000000: [
        "assets/img/accessories5_2_black_1.jpg",
        "assets/img/accessories5_2_black_2.jpg",
        "assets/img/accessories5_2_black_3.jpg",
        "assets/img/accessories5_2_black_4.jpg",
      ],
      0xff0000FF: [
        "assets/img/accessories5_2_blue_1.jpg",
        "assets/img/accessories5_2_blue_2.jpg",
        "assets/img/accessories5_2_blue_3.jpg",
        "assets/img/accessories5_2_blue_4.jpg",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 5_3",
    "name":
        "Alpinestars Men's SMX-1 Air v2 Motorcycle Riding Glove, Black, Large",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 5",
    "color": {
      0xff000000: [
        "assets/img/accessories5_3_black_1.jpg",
        "assets/img/accessories5_3_black_2.jpg",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 5_4",
    "name": "ADIZERO 14 ELECTRIC FLORAL",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 5",
    "color": {
      0xffFFFFFF: [
        "assets/img/accessories5_4_white_1.avif",
        "assets/img/accessories5_4_white_2.avif",
        "assets/img/accessories5_4_white_3.avif",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 6_1",
    "name":
        "Cashmere Ultra-Fine Merino Wool and Cashmere Blend Woven Scarf -Luxe fabric-Lightweight- 72 x 12",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 6",
    "color": {
      0xffC0C0C0: [
        "assets/img/accessories6_1_silver_1.jpg",
        "assets/img/accessories6_1_silver_2.jpg",
      ],
      0xff0000FF: [
        "assets/img/accessories6_1_blue_1.jpg",
      ],
      0xffE5C8A8: [
        "assets/img/accessories6_1_desertSand_1.jpg",
      ]
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 6_2",
    "name":
        "FULLRON Men Winter Merino Wool Knit Scarf - Warm Soft Cashmere Feel Neck Scarves",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 6",
    "color": {
      0xff808080: [
        "assets/img/accessories6_2_gray_1.jpg",
        "assets/img/accessories6_2_gray_2.jpg",
        "assets/img/accessories6_2_gray_3.jpg",
        "assets/img/accessories6_2_gray_4.jpg",
        "assets/img/accessories6_2_gray_5.jpg",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 6_3",
    "name":
        "Alpine Swiss Mens Plaid Scarf Ultra-Soft Winter Shawl Warm Lightweight Cold-Weather Gear",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 6",
    "color": {
      0xffFF0000: [
        "assets/img/accessories6_3_red_1.jpg",
        "assets/img/accessories6_3_red_2.jpg",
        "assets/img/accessories6_3_red_3.jpg",
        "assets/img/accessories6_3_red_4.jpg",
      ],
      0xff00FF00: [
        "assets/img/accessories6_3_green_1.jpg",
        "assets/img/accessories6_3_green_2.jpg",
        "assets/img/accessories6_3_green_3.jpg",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 6_4",
    "name": "FULLRON Men Winter Scarf Soft Warm Long Cashmere Feel Scarves",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 6",
    "color": {
      0xffFF0000: [
        "assets/img/accessories6_4_red_1.jpg",
        "assets/img/accessories6_4_red_2.jpg",
        "assets/img/accessories6_4_red_3.jpg",
        "assets/img/accessories6_4_red_4.jpg",
      ],
      0xffE5C8A8: [
        "assets/img/accessories6_4_desertSand_1.jpg",
        "assets/img/accessories6_4_desertSand_2.jpg",
        "assets/img/accessories6_4_desertSand_3.jpg",
        "assets/img/accessories6_4_desertSand_4.jpg",
        "assets/img/accessories6_4_desertSand_5.jpg",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 7_1",
    "name":
        "Nalgene Wide Mouth Water Bottle, Spring Green, Tritan Material, Loop Top",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 7",
    "color": {
      0xffFF0000: [
        // "assets/img/accessories7_1_red_1.jpg",
        "assets/img/accessories7_1_red_2.jpg",
      ],
      // 0xff0000FF: [
      //   "assets/img/accessories7_1_blue_1.jpg",
      // ],
      0xff00FF00: [
        // "assets/img/accessories7_1_green_1.jpg",
        "assets/img/accessories7_1_green_2.jpg",
      ]
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 7_2",
    "name":
        "IRON °FLASK Camping & Hiking Hydration Canteens - 3 Lids (Narrow Straw Lid) Leak Proof Vacuum Insulated Stainless Steel - Hot & Cold Double Walled Sports Water Bottle - Sage, 24 Oz",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 7",
    "color": {
      0xff0000FF: [
        "assets/img/accessories7_2_blue_1.jpg",
      ],
      0xffFF0000: [
        "assets/img/accessories7_2_red_1.jpg",
      ],
      0xff00FF00: [
        "assets/img/accessories7_2_green_1.jpg",
      ]
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 7_3",
    "name": "Steel Metal Bottle 600 ML",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 7",
    "color": {
      0xffC0C0C0: [
        "assets/img/accessories7_3_silver_1.avif",
        "assets/img/accessories7_3_silver_2.avif",
        "assets/img/accessories7_3_silver_3.avif",
      ],
      0xff000000: [
        "assets/img/accessories7_3_black_1.avif",
        "assets/img/accessories7_3_black_2.avif",
        "assets/img/accessories7_3_black_3.avif",
        "assets/img/accessories7_3_black_4.avif",
      ],
      0xff808080: [
        "assets/img/accessories7_3_gray_1.avif",
        "assets/img/accessories7_3_gray_2.avif",
        "assets/img/accessories7_3_gray_3.avif",
        "assets/img/accessories7_3_gray_4.avif",
      ]
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 7_4",
    "name": "Steel Metal Bottle 1L",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 7",
    "color": {
      0xffC0C0C0: [
        "assets/img/accessories7_4_silver_1.avif",
        "assets/img/accessories7_4_silver_2.avif",
        "assets/img/accessories7_4_silver_3.avif",
      ],
      0xff000000: [
        "assets/img/accessories7_4_black_1.avif",
        "assets/img/accessories7_4_black_2.avif",
        "assets/img/accessories7_4_black_3.avif",
        "assets/img/accessories7_4_black_4.avif",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 7_5",
    "name": "Steel Metal Bottle 1L",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 7",
    "color": {
      0xff000000: [
        "assets/img/accessories7_4_black_1.avif",
        "assets/img/accessories7_4_black_2.avif",
        "assets/img/accessories7_4_black_3.avif",
        "assets/img/accessories7_4_black_4.avif",
      ],
      0xffC0C0C0: [
        "assets/img/accessories7_4_silver_1.avif",
        "assets/img/accessories7_4_silver_2.avif",
        "assets/img/accessories7_4_silver_3.avif",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 7_6",
    "name": "Steel Metal Bottle 600 ML",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 7",
    "color": {
      0xff808080: [
        "assets/img/accessories7_3_gray_1.avif",
        "assets/img/accessories7_3_gray_2.avif",
        "assets/img/accessories7_3_gray_3.avif",
        "assets/img/accessories7_3_gray_4.avif",
      ],
      0xffC0C0C0: [
        "assets/img/accessories7_3_silver_1.avif",
        "assets/img/accessories7_3_silver_2.avif",
        "assets/img/accessories7_3_silver_3.avif",
      ],
      0xff000000: [
        "assets/img/accessories7_3_black_1.avif",
        "assets/img/accessories7_3_black_2.avif",
        "assets/img/accessories7_3_black_3.avif",
        "assets/img/accessories7_3_black_4.avif",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 8_1",
    "name":
        "Dolce & Gabbana DG6134 Men's Sunglasses Transparent Blue/Black/Dark Blue 57",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 8",
    "color": {
      0xff0000FF: [
        "assets/img/accessories8_1_blue_1.jpg",
        "assets/img/accessories8_1_blue_2.jpg",
        "assets/img/accessories8_1_blue_3.jpg",
        "assets/img/accessories8_1_blue_4.jpg",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 8_2",
    "name": "CLUBMASTER CLASSIC",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 8",
    "color": {
      0xff808080: [
        "assets/img/accessories8_2_gray_1.avif",
        "assets/img/accessories8_2_gray_2.avif",
        "assets/img/accessories8_2_gray_3.avif",
        "assets/img/accessories8_2_gray_4.avif",
      ],
      0xffA52A2A: [
        "assets/img/accessories8_2_brown_1.avif",
        "assets/img/accessories8_2_brown_2.avif",
        "assets/img/accessories8_2_brown_3.avif",
        "assets/img/accessories8_2_brown_4.avif",
      ],
      0xff00FF00: [
        "assets/img/accessories8_2_green_1.avif",
        "assets/img/accessories8_2_green_2.avif",
        "assets/img/accessories8_2_green_3.avif",
        "assets/img/accessories8_2_green_4.avif",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 8_3",
    "name": "AVIATOR CLASSIC",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 8",
    "color": {
      0xff000000: [
        "assets/img/accessories8_3_black_1.avif",
        "assets/img/accessories8_3_black_2.avif",
        "assets/img/accessories8_3_black_3.avif",
        "assets/img/accessories8_3_black_4.avif",
      ],
      0xffA52A2A: [
        "assets/img/accessories8_3_brown_1.avif",
        "assets/img/accessories8_3_brown_2.avif",
        "assets/img/accessories8_3_brown_3.avif",
        "assets/img/accessories8_3_brown_4.avif",
      ],
      0xff00FF00: [
        "assets/img/accessories8_3_green_1.avif",
        "assets/img/accessories8_3_green_2.avif",
        "assets/img/accessories8_3_green_3.avif",
        "assets/img/accessories8_3_green_4.avif",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 8_4",
    "name": "HEXAGONAL FLAT LENSES",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 8",
    "color": {
      0xff00FF00: [
        "assets/img/accessories8_4_green_1.avif",
        "assets/img/accessories8_4_green_2.avif",
        "assets/img/accessories8_4_green_3.avif",
        "assets/img/accessories8_4_green_4.avif",
      ],
      0xffADD8E6: [
        "assets/img/accessories8_4_lightBlue_1.avif",
        "assets/img/accessories8_4_lightBlue_2.avif",
        "assets/img/accessories8_4_lightBlue_3.avif",
        "assets/img/accessories8_4_lightBlue_4.avif",
      ],
      0xffFFC0CB: [
        "assets/img/accessories8_4_pink_1.avif",
        "assets/img/accessories8_4_pink_2.avif",
        "assets/img/accessories8_4_pink_3.avif",
        "assets/img/accessories8_4_pink_4.avif",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 8_5",
    "name": "ROUND METAL",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 8",
    "color": {
      0xff000000: [
        "assets/img/accessories8_5_black_1.avif",
        "assets/img/accessories8_5_black_2.avif",
        "assets/img/accessories8_5_black_3.avif",
        "assets/img/accessories8_5_black_4.avif",
      ],
      0xffA52A2A: [
        "assets/img/accessories8_5_brown_1.avif",
        "assets/img/accessories8_5_brown_2.avif",
        "assets/img/accessories8_5_brown_3.avif",
        "assets/img/accessories8_5_brown_4.avif",
      ],
      0xffADD8E6: [
        "assets/img/accessories8_5_lightBlue_1.avif",
        "assets/img/accessories8_5_lightBlue_2.avif",
        "assets/img/accessories8_5_lightBlue_3.avif",
        "assets/img/accessories8_5_lightBlue_4.avif",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 9_1",
    "name": "Performance Mesh Graphic Boxer Briefs 3-Pack",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 9",
    "color": {
      0xff00FF00: [
        "assets/img/accessories9_1_green_1.avif",
        "assets/img/accessories9_1_green_2.avif",
        "assets/img/accessories9_1_green_3.avif",
        "assets/img/accessories9_1_green_4.avif",
      ],
      0xffFF0000: [
        "assets/img/accessories9_1_red_1.avif",
        "assets/img/accessories9_1_red_2.avif",
        "assets/img/accessories9_1_red_3.avif",
        "assets/img/accessories9_1_red_4.avif",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 9_2",
    "name": "Performance Mesh Graphic Boxer Briefs 3-Pack",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 9",
    "color": {
      0xff0000FF: [
        "assets/img/accessories9_2_blue_1.avif",
        "assets/img/accessories9_2_blue_2.avif",
        "assets/img/accessories9_2_blue_3.avif",
        "assets/img/accessories9_2_blue_4.avif",
      ],
      0xff000000: [
        "assets/img/accessories9_2_black_1.avif",
        "assets/img/accessories9_2_black_2.avif",
        "assets/img/accessories9_2_black_3.avif",
        "assets/img/accessories9_2_black_4.avif",
      ]
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 9_3",
    "name": "Stretch Cotton Boxer Briefs 3-pack",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 9",
    "color": {
      0xff808080: [
        "assets/img/accessories9_3_gray_1.avif",
        "assets/img/accessories9_3_gray_2.avif",
        "assets/img/accessories9_3_gray_3.avif",
        "assets/img/accessories9_3_gray_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 9_4",
    "name": "Stretch Cotton Boxer Briefs 3-pack",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 9",
    "color": {
      0xff000000: [
        "assets/img/accessories9_4_black_1.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 10_1",
    "name": "Adicolor 3-Stripes Swim Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 10",
    "color": {
      0xff0000FF: [
        "assets/img/accessories10_1_blue_1.avif",
        "assets/img/accessories10_1_blue_2.avif",
        "assets/img/accessories10_1_blue_3.avif",
        "assets/img/accessories10_1_blue_4.avif",
      ],
      0xffFFA500: [
        "assets/img/accessories10_1_orange_1.avif",
        "assets/img/accessories10_1_orange_2.avif",
        "assets/img/accessories10_1_orange_3.avif",
        "assets/img/accessories10_1_orange_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 10_2",
    "name": "3-Stripes CLX Swim Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 10",
    "color": {
      0xff00FF00: [
        "assets/img/accessories10_2_green_1.avif",
        "assets/img/accessories10_2_green_2.avif",
        "assets/img/accessories10_2_green_3.avif",
        "assets/img/accessories10_2_green_4.avif",
      ],
      0xff000000: [
        "assets/img/accessories10_2_black_1.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Accessories 10_3",
    "name": "Adicolor 3-Stripes Swim Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "ACCESSORIES",
    "sub_category_id": "Accessories 10",
    "color": {
      0xffFFA500: [
        "assets/img/accessories10_1_orange_1.avif",
        "assets/img/accessories10_1_orange_2.avif",
        "assets/img/accessories10_1_orange_3.avif",
        "assets/img/accessories10_1_orange_4.avif",
      ],
      0xff0000FF: [
        "assets/img/accessories10_1_blue_1.avif",
        "assets/img/accessories10_1_blue_2.avif",
        "assets/img/accessories10_1_blue_3.avif",
        "assets/img/accessories10_1_blue_4.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },

  //SHOES
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 1_1",
    "name": "SAMBA OG W",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 1",
    "color": {
      0xff000000: [
        "assets/img/shoes1_1_black_1.avif",
        "assets/img/shoes1_1_black_2.avif",
        "assets/img/shoes1_1_black_3.avif",
      ],
      0xffFF0000: [
        "assets/img/shoes1_1_red_1.avif",
        "assets/img/shoes1_1_red_2.avif",
        "assets/img/shoes1_1_red_3.avif",
      ],
      0xffA52A2A: [
        "assets/img/shoes1_1_brown_1.avif",
        "assets/img/shoes1_1_brown_2.avif",
        "assets/img/shoes1_1_brown_3.avif",
        "assets/img/shoes1_1_brown_4.avif",
      ]
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Best Sellers",
    "product_id": "Shoes 1_2",
    "name": "Samba OG Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 1",
    "color": {
      0xffFFC0CB: [
        "assets/img/shoes1_2_pink_1.avif",
        "assets/img/shoes1_2_pink_2.avif",
        "assets/img/shoes1_2_pink_3.avif",
        "assets/img/shoes1_2_pink_4.avif",
      ],
      0xffFF0000: [
        "assets/img/shoes1_2_red_1.avif",
        "assets/img/shoes1_2_red_2.avif",
        "assets/img/shoes1_3_red_3.avif",
      ],
      0xff000000: [
        "assets/img/shoes1_2_black_1.avif",
        "assets/img/shoes1_2_black_2.avif",
        "assets/img/shoes1_2_black_3.avif",
        "assets/img/shoes1_2_black_4.avif",
      ]
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "D&S Exclusives",
    "product_id": "Shoes 1_3",
    "name": "Samba OG Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 1",
    "color": {
      0xffFF0000: [
        "assets/img/shoes1_2_red_1.avif",
        "assets/img/shoes1_2_red_2.avif",
        "assets/img/shoes1_3_red_3.avif",
      ],
      0xffFFC0CB: [
        "assets/img/shoes1_2_pink_1.avif",
        "assets/img/shoes1_2_pink_2.avif",
        "assets/img/shoes1_2_pink_3.avif",
        "assets/img/shoes1_2_pink_4.avif",
      ],
      0xff000000: [
        "assets/img/shoes1_2_black_1.avif",
        "assets/img/shoes1_2_black_2.avif",
        "assets/img/shoes1_2_black_3.avif",
        "assets/img/shoes1_2_black_4.avif",
      ]
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Sales",
    "product_id": "Shoes 1_4",
    "name": "Samba OG Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 1",
    "color": {
      0xff000000: [
        "assets/img/shoes1_2_black_1.avif",
        "assets/img/shoes1_2_black_2.avif",
        "assets/img/shoes1_2_black_3.avif",
        "assets/img/shoes1_2_black_4.avif",
      ],
      0xffFF0000: [
        "assets/img/shoes1_2_red_1.avif",
        "assets/img/shoes1_2_red_2.avif",
        "assets/img/shoes1_3_red_3.avif",
      ],
      0xffFFC0CB: [
        "assets/img/shoes1_2_pink_1.avif",
        "assets/img/shoes1_2_pink_2.avif",
        "assets/img/shoes1_2_pink_3.avif",
        "assets/img/shoes1_2_pink_4.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "What's Upcoming?",
    "product_id": "Shoes 1_5",
    "name": "VL Court 3.0 Dia de los Muertos Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 1",
    "color": {
      0xffFFA500: [
        "assets/img/shoes1_5_orange_1.avif",
        "assets/img/shoes1_5_orange_2.avif",
        "assets/img/shoes1_5_orange_3.avif",
        "assets/img/shoes1_5_orange_4.avif",
      ],
      0xffE5C8A8: [
        "assets/img/shoes1_5_desertSand_1.avif",
        "assets/img/shoes1_5_desertSand_2.avif",
        "assets/img/shoes1_5_desertSand_3.avif",
        "assets/img/shoes1_5_desertSand_4.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "Offers",
    "product_id": "Shoes 1_6",
    "name": "Campus 00s Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 1",
    "color": {
      0xff0000FF: [
        "assets/img/shoes1_6_blue_1.avif",
        "assets/img/shoes1_6_blue_2.avif",
        "assets/img/shoes1_6_blue_3.avif",
        "assets/img/shoes1_6_blue_4.avif",
      ],
      0xff00FF00: [
        "assets/img/shoes1_6_green_1.avif",
        "assets/img/shoes1_6_green_2.avif",
        "assets/img/shoes1_6_green_3.avif",
        "assets/img/shoes1_6_green_4.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 2_1",
    "name": "Adilette Suede Slides",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 2",
    "color": {
      0xffA52A2A: [
        "assets/img/shoes2_1_brown_1.avif",
        "assets/img/shoes2_1_brown_2.avif",
        "assets/img/shoes2_1_brown_3.avif",
        "assets/img/shoes2_1_brown_4.avif",
      ],
      0xffE5C8A8: [
        "assets/img/shoes2_1_desertSand_1.avif",
        "assets/img/shoes2_1_desertSand_2.avif",
        "assets/img/shoes2_1_desertSand_3.avif",
        "assets/img/shoes2_1_desertSand_4.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 2_2",
    "name": "Adilette Suede Slides",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 2",
    "color": {
      0xffE5C8A8: [
        "assets/img/shoes2_1_desertSand_1.avif",
        "assets/img/shoes2_1_desertSand_2.avif",
        "assets/img/shoes2_1_desertSand_3.avif",
        "assets/img/shoes2_1_desertSand_4.avif",
      ],
      0xffA52A2A: [
        "assets/img/shoes2_1_brown_1.avif",
        "assets/img/shoes2_1_brown_2.avif",
        "assets/img/shoes2_1_brown_3.avif",
        "assets/img/shoes2_1_brown_4.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 2_3",
    "name": "Adilette Slides",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 2",
    "color": {
      0xffC0C0C0: [
        "assets/img/shoes2_3_silver_1.avif",
        "assets/img/shoes2_3_silver_2.avif",
        "assets/img/shoes2_3_silver_3.avif",
        "assets/img/shoes2_3_silver_4.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 2_4",
    "name": "Y-3 Water Slide",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 2",
    "color": {
      0xff00FF00: [
        "assets/img/shoes2_4_green_1.avif",
        "assets/img/shoes2_4_green_2.avif",
        "assets/img/shoes2_4_green_3.avif",
        "assets/img/shoes2_4_green_4.avif",
      ],
      0xff000000: [
        "assets/img/shoes2_4_black_1.avif",
        "assets/img/shoes2_4_black_2.avif",
        "assets/img/shoes2_4_black_3.avif",
        "assets/img/shoes2_4_black_4.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 2_5",
    "name": "Adilette Slides",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 2",
    "color": {
      0xff0000FF: [
        "assets/img/shoes2_5_blue_1.avif",
        "assets/img/shoes2_5_blue_2.avif",
        "assets/img/shoes2_5_blue_3.avif",
        "assets/img/shoes2_5_blue_4.avif",
      ],
      0xff000000: [
        "assets/img/shoes2_5_black_1.avif",
        "assets/img/shoes2_5_black_2.avif",
        "assets/img/shoes2_5_black_3.avif",
        "assets/img/shoes2_5_black_4.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 2_6",
    "name": "Adissage Slides",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 2",
    "color": {
      0xff000000: [
        "assets/img/shoes2_6_black_1.avif",
        "assets/img/shoes2_6_black_2.avif",
        "assets/img/shoes2_6_black_3.avif",
        "assets/img/shoes2_6_black_4.avif",
      ],
      0xff0000FF: [
        "assets/img/shoes2_6_blue_1.avif",
        "assets/img/shoes2_6_blue_2.avif",
        "assets/img/shoes2_6_blue_3.avif",
        "assets/img/shoes2_6_blue_4.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 3_1",
    "name": "TERREX AX4 Mid GORE-TEX Hiking Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 3",
    "color": {
      0xff000000: [
        "assets/img/shoes3_1_black_1.avif",
        "assets/img/shoes3_1_black_2.avif",
        "assets/img/shoes3_1_black_3.avif",
        "assets/img/shoes3_1_black_4.avif",
      ],
      0xff00FF00: [
        "assets/img/shoes3_1_green_1.avif",
        "assets/img/shoes3_1_green_2.avif",
        "assets/img/shoes3_1_green_3.avif",
        "assets/img/shoes3_1_green_4.avif",
      ],
    },
    "size": ["3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 3_2",
    "name": "Nike Manoa Leather",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 3",
    "color": {
      0xffE5C8A8: [
        "assets/img/shoes3_2_desertSand_1.png",
        "assets/img/shoes3_2_desertSand_2.png",
        "assets/img/shoes3_2_desertSand_3.png",
        "assets/img/shoes3_2_desertSand_4.png",
      ],
      0xff000000: [
        "assets/img/shoes3_2_black_1.png",
        "assets/img/shoes3_2_black_2.png",
        "assets/img/shoes3_2_black_3.jpeg",
        "assets/img/shoes3_2_black_4.png",
      ],
    },
    "size": ["3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 3_3",
    "name": "Nike Woodside 2",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 3",
    "color": {
      0xffA52A2A: [
        "assets/img/shoes3_3_brown_1.jpeg",
        "assets/img/shoes3_3_brown_2.png",
        "assets/img/shoes3_3_brown_3.png",
        "assets/img/shoes3_3_brown_4.png",
      ],
      0xff000000: [
        "assets/img/shoes3_3_black_1.png",
        "assets/img/shoes3_3_black_2.png",
        "assets/img/shoes3_3_black_3.jpeg",
        "assets/img/shoes3_3_black_4.png",
      ],
    },
    "size": ["3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 3_4",
    "name": "Nike SFB Jungle 2 8 Leather",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 3",
    "color": {
      0xffA52A2A: [
        "assets/img/shoes3_4_brown_1.jpeg",
        "assets/img/shoes3_4_brown_2.jpeg",
        "assets/img/shoes3_4_brown_3.jpeg",
        "assets/img/shoes3_4_brown_4.jpeg",
      ],
    },
    "size": ["3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 3_5",
    "name": "Nike Air Max Goaterra 2.0",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 3",
    "color": {
      0xffA52A2A: [
        "assets/img/shoes3_5_brown_1.png",
        "assets/img/shoes3_5_brown_2.png",
        "assets/img/shoes3_5_brown_3.png",
        "assets/img/shoes3_5_brown_4.png",
      ],
    },
    "size": ["3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 3_6",
    "name": "Nike Lunar Force 1",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 3",
    "color": {
      0xff000000: [
        "assets/img/shoes3_6_black_1.png",
        "assets/img/shoes3_6_black_2.png",
        "assets/img/shoes3_6_black_3.png",
        "assets/img/shoes3_6_black_4.png",
      ],
    },
    "size": ["3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 4_1",
    "name": "Dropset 3 Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 4",
    "color": {
      0xffFF0000: [
        "assets/img/shoes4_1_red_1.avif",
        "assets/img/shoes4_1_red_2.avif",
        "assets/img/shoes4_1_red_3.avif",
      ],
      0xff808080: [
        "assets/img/shoes4_1_grey_1.avif",
        "assets/img/shoes4_1_grey_2.avif",
        "assets/img/shoes4_1_grey_3.avif",
      ],
      0xff000000: [
        "assets/img/shoes4_1_black_1.avif",
        "assets/img/shoes4_1_black_2.avif",
        "assets/img/shoes4_1_black_3.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 4_2",
    "name": "Dropset 3 Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 4",
    "color": {
      0xff808080: [
        "assets/img/shoes4_1_grey_1.avif",
        "assets/img/shoes4_1_grey_2.avif",
        "assets/img/shoes4_1_grey_3.avif",
      ],
      0xffFF0000: [
        "assets/img/shoes4_1_red_1.avif",
        "assets/img/shoes4_1_red_2.avif",
        "assets/img/shoes4_1_red_3.avif",
      ],
      0xff000000: [
        "assets/img/shoes4_1_black_1.avif",
        "assets/img/shoes4_1_black_2.avif",
        "assets/img/shoes4_1_black_3.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 4_3",
    "name": "Dropset 3 Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 4",
    "color": {
      0xff000000: [
        "assets/img/shoes4_1_black_1.avif",
        "assets/img/shoes4_1_black_2.avif",
        "assets/img/shoes4_1_black_3.avif",
      ],
      0xff808080: [
        "assets/img/shoes4_1_grey_1.avif",
        "assets/img/shoes4_1_grey_2.avif",
        "assets/img/shoes4_1_grey_3.avif",
      ],
      0xffFF0000: [
        "assets/img/shoes4_1_red_1.avif",
        "assets/img/shoes4_1_red_2.avif",
        "assets/img/shoes4_1_red_3.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 4_4",
    "name": "Dropset 3 GFX Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 4",
    "color": {
      0xffC0C0C0: [
        "assets/img/shoes4_4_silver_1.avif",
        "assets/img/shoes4_4_silver_2.avif",
        "assets/img/shoes4_4_silver_3.avif",
      ],
      0xff000000: [
        "assets/img/shoes4_4_black_1.avif",
        "assets/img/shoes4_4_black_2.avif",
        "assets/img/shoes4_4_black_3.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 4_5",
    "name": "Everyset Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 4",
    "color": {
      0xffFF0000: [
        "assets/img/shoes4_5_red_1.avif",
        "assets/img/shoes4_5_red_2.avif",
        "assets/img/shoes4_5_red_3.avif",
      ],
      0xff0000FF: [
        "assets/img/shoes4_5_blue_1.avif",
        "assets/img/shoes4_5_blue_2.avif",
        "assets/img/shoes4_5_blue_3.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 4_6",
    "name": "Everyset Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 4",
    "color": {
      0xff0000FF: [
        "assets/img/shoes4_5_blue_1.avif",
        "assets/img/shoes4_5_blue_2.avif",
        "assets/img/shoes4_5_blue_3.avif",
      ],
      0xffFF0000: [
        "assets/img/shoes4_5_red_1.avif",
        "assets/img/shoes4_5_red_2.avif",
        "assets/img/shoes4_5_red_3.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 5_1",
    "name": "Terrex Soulstride RAIN.RDY Trail Running Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 5",
    "color": {
      0xff000000: [
        "assets/img/shoes5_1_black_1.avif",
        "assets/img/shoes5_1_black_2.avif",
        "assets/img/shoes5_1_black_3.avif",
      ],
    },
    "size": ["3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 5_2",
    "name": "Terrex Agravic 3 Trail Running Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 5",
    "color": {
      0xffFFA500: [
        "assets/img/shoes5_2_orange_1.avif",
        "assets/img/shoes5_2_orange_2.avif",
        "assets/img/shoes5_2_orange_3.avif",
      ],
      0xff0000FF: [
        "assets/img/shoes5_2_blue_1.avif",
        "assets/img/shoes5_2_blue_2.avif",
        "assets/img/shoes5_2_blue_3.avif",
      ],
    },
    "size": ["3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 5_3",
    "name": "Nike Pegasus Plus",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 5",
    "color": {
      0xff800080: [
        "assets/img/shoes5_3_purple_1.jpeg",
        "assets/img/shoes5_3_purple_2.jpeg",
        "assets/img/shoes5_3_purple_3.png",
        "assets/img/shoes5_3_purple_4.jpeg",
      ],
      0xff0000FF: [
        "assets/img/shoes5_3_blue_1.png",
        "assets/img/shoes5_3_blue_2.png",
        "assets/img/shoes5_3_blue_3.jpeg",
        "assets/img/shoes5_3_blue_4.jpeg",
      ],
    },
    "size": ["3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 5_4",
    "name": "Nike Pegasus 41",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 5",
    "color": {
      0xffC0C0C0: [
        "assets/img/shoes5_4_silver_1.png",
        "assets/img/shoes5_4_silver_2.png",
        "assets/img/shoes5_4_silver_3.png",
        "assets/img/shoes5_4_silver_4.png",
      ],
      0xff800080: [
        "assets/img/shoes5_4_purple_1.jpeg",
        "assets/img/shoes5_4_purple_2.png",
        "assets/img/shoes5_4_purple_3.jpeg",
        "assets/img/shoes5_4_purple_4.png",
      ],
    },
    "size": ["3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 5_5",
    "name": "Nike InfinityRN 4 GORE-TEX",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 5",
    "color": {
      0xff000000: [
        "assets/img/shoes5_5_black_1.png",
        "assets/img/shoes5_5_black_2.png",
        "assets/img/shoes5_5_black_3.png",
        "assets/img/shoes5_5_black_4.jpeg",
      ],
      0xffADD8E6: [
        "assets/img/shoes5_5_lightBlue_1.jpeg",
        "assets/img/shoes5_5_lightBlue_2.png",
        "assets/img/shoes5_5_lightBlue_3.png",
        "assets/img/shoes5_5_lightBlue_4.jpeg",
      ],
    },
    "size": ["3.5", "4", "4.5", "5", "5.5", "6", "6.5", "7", "7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 6_1",
    "name": "Terrex Free Hiker 2.0 Gore-Tex Hiking Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 6",
    "color": {
      0xff000000: [
        "assets/img/shoes6_1_black_1.avif",
        "assets/img/shoes6_1_black_2.avif",
        "assets/img/shoes6_1_black_2.avif",
      ],
      0xff0000FF: [
        "assets/img/shoes6_1_blue_1.avif",
        "assets/img/shoes6_1_blue_2.avif",
        "assets/img/shoes6_1_blue_3.avif",
      ],
    },
    "size": ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 6_2",
    "name": "Terrex Free Hiker 2 Cold.Rdy Hiking Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 6",
    "color": {
      0xff000000: [
        "assets/img/shoes6_2_black_1.avif",
        "assets/img/shoes6_2_black_2.avif",
        "assets/img/shoes6_2_black_2.avif",
      ],
      0xff808080: [
        "assets/img/shoes6_2_grey_1.avif",
        "assets/img/shoes6_2_grey_2.avif",
        "assets/img/shoes6_2_grey_3.avif",
      ],
    },
    "size": ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 6_3",
    "name": "Terrex Anylander Hiking Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 6",
    "color": {
      0xff000000: [
        "assets/img/shoes6_3_black_1.avif",
        "assets/img/shoes6_3_black_2.avif",
        "assets/img/shoes6_3_black_2.avif",
      ],
      0xff808080: [
        "assets/img/shoes6_3_grey_1.avif",
        "assets/img/shoes6_3_grey_2.avif",
        "assets/img/shoes6_3_grey_3.avif",
      ],
    },
    "size": ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 6_4",
    "name": "Terrex Anylander Mid Rain.Rdy Hiking Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 6",
    "color": {
      0xff0000FF: [
        "assets/img/shoes6_4_blue_1.avif",
        "assets/img/shoes6_4_blue_2.avif",
        "assets/img/shoes6_4_blue_3.avif",
        "assets/img/shoes6_4_blue_4.avif",
      ],
      0xff808080: [
        "assets/img/shoes6_4_grey_1.avif",
        "assets/img/shoes6_4_grey_2.avif",
        "assets/img/shoes6_4_grey_3.avif",
        "assets/img/shoes6_4_grey_4.avif",
      ],
    },
    "size": ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "Shoes 6_5",
    "name": "Terrex Winter Slip-On Cold.Rdy Boots",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SHOES",
    "sub_category_id": "Shoes 6",
    "color": {
      0xffFFA500: [
        "assets/img/shoes6_5_orange_1.avif",
        "assets/img/shoes6_5_orange_2.avif",
        "assets/img/shoes6_5_orange_3.avif",
        "assets/img/shoes6_5_orange_4.avif",
      ],
      0xff000000: [
        "assets/img/shoes6_5_black_1.avif",
        "assets/img/shoes6_5_black_2.avif",
        "assets/img/shoes6_5_black_3.avif",
        "assets/img/shoes6_5_black_4.avif",
      ],
    },
    "size": ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  //SPORTS
  {
    "featured": "New Arrivals",
    "product_id": "sports 1_1",
    "name": "SAMBA OG W",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 1",
    "color": {
      0xff000000: [
        "assets/img/sports1_1_black_1.avif",
        "assets/img/sports1_1_black_2.avif",
        "assets/img/sports1_1_black_3.avif",
      ],
      0xffFF0000: [
        "assets/img/sports1_1_red_1.avif",
        "assets/img/sports1_1_red_2.avif",
        "assets/img/sports1_1_red_3.avif",
      ],
      0xff00FF00: [
        "assets/img/sports1_1_green_1.avif",
        "assets/img/sports1_1_green_2.avif",
        "assets/img/sports1_1_green_3.avif",
      ]
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7", "M6.5/W7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 1_2",
    "name": "Samba OG Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 1",
    "color": {
      0xffFFFFFF: [
        "assets/img/sports1_2_white_1.avif",
        "assets/img/sports1_2_white_2.avif",
        "assets/img/sports1_2_white_3.avif",
      ],
      0xffFF0000: [
        "assets/img/sports1_2_black_1.avif",
        "assets/img/sports1_2_black_2.avif",
        "assets/img/sports1_2_black_3.avif",
      ],
      0xff00FF00: [
        "assets/img/sports1_1_green_1.avif",
        "assets/img/sports1_1_green_2.avif",
        "assets/img/sports1_1_green_3.avif",
      ]
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7", "M6.5/W7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 1_3",
    "name": "Gazelle Indoor Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 1",
    "color": {
      0xff00FF00: [
        "assets/img/sports1_3_green_1.avif",
        "assets/img/sports1_3_green_2.avif",
        "assets/img/sports1_3_green_3.avif",
      ],
      0xff0000FF: [
        "assets/img/sports1_3_blue_1.avif",
        "assets/img/sports1_3_blue_2.avif",
        "assets/img/sports1_3_blue_3.avif",
      ],
      0xffFFFF00: [
        "assets/img/sports1_3_yellow_1.avif",
        "assets/img/sports1_3_yellow_2.avif",
        "assets/img/sports1_3_yellow_3.avif",
        "assets/img/sports1_3_yellow_4.avif",
      ]
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7", "M6.5/W7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 1_4",
    "name": " Indoor Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 1",
    "color": {
      0xffFFFF00: [
        "assets/img/sports1_3_yellow_1.avif",
        "assets/img/sports1_3_yellow_2.avif",
        "assets/img/sports1_3_yellow_3.avif",
        "assets/img/sports1_3_yellow_4.avif",
      ],
      0xff00FF00: [
        "assets/img/sports1_3_green_1.avif",
        "assets/img/sports1_3_green_2.avif",
        "assets/img/sports1_3_green_3.avif",
      ],
      0xff0000FF: [
        "assets/img/sports1_3_blue_1.avif",
        "assets/img/sports1_3_blue_2.avif",
        "assets/img/sports1_3_blue_3.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7", "M6.5/W7.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 2_1",
    "name": "Adifom Stan Smith Hello Kitty Mules",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 2",
    "color": {
      0xff000000: [
        "assets/img/sports2_1_black_1.avif",
        "assets/img/sports2_1_black_2.avif",
        "assets/img/sports2_1_black_3.avif",
        "assets/img/sports2_1_black_4.avif",
      ],
      0xffFFC0CB: [
        "assets/img/sports2_1_pink_1.avif",
        "assets/img/sports2_1_pink_2.avif",
        "assets/img/sports2_1_pink_3.avif",
        "assets/img/sports2_1_pink_4.avif",
      ],
      0xff00FF00: [
        "assets/img/sports2_1_green_1.avif",
        "assets/img/sports2_1_green_2.avif",
        "assets/img/sports2_1_green_3.avif",
        "assets/img/sports2_1_green_4.avif",
      ]
    },
    "size": ["5", "6", "7", "8", "9", "10"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 2_2",
    "name": "Adilette Sandals",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 2",
    "color": {
      0xff000000: [
        "assets/img/sports2_2_black_1.avif",
        "assets/img/sports2_2_black_2.avif",
        "assets/img/sports2_2_black_3.avif",
        "assets/img/sports2_2_black_4.avif",
      ],
      0xffFFC0CB: [
        "assets/img/sports2_2_pink_1.avif",
        "assets/img/sports2_2_pink_2.avif",
        "assets/img/sports2_2_pink_3.avif",
        "assets/img/sports2_2_pink_4.avif",
      ],
    },
    "size": ["5", "6", "7", "8", "9", "10"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 2_3",
    "name": "Adifom Stan Smith Mules",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 2",
    "color": {
      0xff808080: [
        "assets/img/sports2_3_gray_1.avif",
        "assets/img/sports2_3_gray_2.avif",
        "assets/img/sports2_3_gray_3.avif",
        "assets/img/sports2_3_gray_4.avif",
      ],
    },
    "size": ["5", "6", "7", "8", "9", "10"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 2_4",
    "name": "Adilette Comfort Sandals",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 2",
    "color": {
      0xff000000: [
        "assets/img/sports2_4_black_1.avif",
        "assets/img/sports2_4_black_2.avif",
        "assets/img/sports2_4_black_3.avif",
        "assets/img/sports2_4_black_4.avif",
      ],
      0xffADD8E6: [
        "assets/img/sports2_4_lightBlue_1.avif",
        "assets/img/sports2_4_lightBlue_2.avif",
        "assets/img/sports2_4_lightBlue_3.avif",
        "assets/img/sports2_4_lightBlue_4.avif",
      ],
    },
    "size": ["5", "6", "7", "8", "9", "10"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 3_1",
    "name": "Terrex Hydro Lace Boots",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 3",
    "color": {
      0xffFF0000: [
        "assets/img/sports3_1_red_1.avif",
        "assets/img/sports3_1_red_2.avif",
        "assets/img/sports3_1_red_3.avif",
        "assets/img/sports3_1_red_4.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 3_2",
    "name": "Terrex Winter Slip-On Cold.Rdy Boots",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 3",
    "color": {
      0xff808080: [
        "assets/img/sports3_2_gray_1.avif",
        "assets/img/sports3_2_gray_2.avif",
        "assets/img/sports3_2_gray_3.avif",
        "assets/img/sports3_2_gray_4.avif",
      ],
      0xffFFA500: [
        "assets/img/sports3_2_orange_1.avif",
        "assets/img/sports3_2_orange_2.avif",
        "assets/img/sports3_2_orange_3.avif",
        "assets/img/sports3_2_orange_4.avif",
      ],
      0xff000000: [
        "assets/img/sports3_2_black_1.avif",
        "assets/img/sports3_2_black_2.avif",
        "assets/img/sports3_2_black_3.avif",
        "assets/img/sports3_2_black_4.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 3_3",
    "name": "Terrex Winter Leather Mid Cut Rain.Rdy Cold.Rdy Boots",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 3",
    "color": {
      0xffE5C8A8: [
        "assets/img/sports3_3_desertSand_1.avif",
        "assets/img/sports3_3_desertSand_2.avif",
        "assets/img/sports3_3_desertSand_3.avif",
      ],
      0xff000000: [
        "assets/img/sports3_3_black_1.avif",
        "assets/img/sports3_3_black_2.avif",
        "assets/img/sports3_3_black_3.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 3_4",
    "name": "adidas by Stella McCartney x Terrex Free Hiker Gore-Tex Boots",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 3",
    "color": {
      0xff808080: [
        "assets/img/sports3_4_gray_1.avif",
        "assets/img/sports3_4_gray_2.avif",
        "assets/img/sports3_4_gray_3.avif",
        "assets/img/sports3_4_gray_4.avif",
      ],
    },
    "size": ["M4/W5", "M4.5/W5.5", "M5/W6", "M5.5/W6.5", "M6/W7"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 4_1",
    "name": "Designed for Training Workout Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 4",
    "color": {
      0xff800080: [
        "assets/img/sports4_1_purple_1.avif",
        "assets/img/sports4_1_purple_2.avif",
        "assets/img/sports4_1_purple_3.avif",
        "assets/img/sports4_1_purple_4.avif",
      ],
      0xffFFC0CB: [
        "assets/img/sports4_1_pink_1.avif",
        "assets/img/sports4_1_pink_2.avif",
        "assets/img/sports4_1_pink_3.avif",
        "assets/img/sports4_1_pink_4.avif",
      ],
      0xffA52A2A: [
        "assets/img/sports4_1_brown_1.avif",
        "assets/img/sports4_1_brown_2.avif",
        "assets/img/sports4_1_brown_3.avif",
        "assets/img/sports4_1_brown_4.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 4_2",
    "name": "Everyset Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 4",
    "color": {
      0xff0000FF: [
        "assets/img/sports4_2_blue_1.avif",
        "assets/img/sports4_2_blue_2.avif",
        "assets/img/sports4_2_blue_3.avif",
      ],
      0xffFF0000: [
        "assets/img/sports4_2_red_1.avif",
        "assets/img/sports4_2_red_2.avif",
        "assets/img/sports4_2_red_3.avif",
      ],
      0xffC0C0C0: [
        "assets/img/sports4_2_silver_1.avif",
        "assets/img/sports4_2_silver_2.avif",
        "assets/img/sports4_2_silver_3.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 4_3",
    "name": "Power Workout Two-in-One Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 4",
    "color": {
      0xffFFC0CB: [
        "assets/img/sports4_3_pink_1.avif",
        "assets/img/sports4_3_pink_2.avif",
        "assets/img/sports4_3_pink_3.avif",
        "assets/img/sports4_3_pink_4.avif",
      ],
      0xff800080: [
        "assets/img/sports4_3_purple_1.avif",
        "assets/img/sports4_3_purple_2.avif",
        "assets/img/sports4_3_purple_3.avif",
        "assets/img/sports4_3_purple_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 4_4",
    "name": "Workout Crewneck Tee",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 4",
    "color": {
      0xffE5C8A8: [
        "assets/img/sports4_4_desertSand_1.avif",
        "assets/img/sports4_4_desertSand_2.avif",
        "assets/img/sports4_4_desertSand_3.avif",
        "assets/img/sports4_4_desertSand_4.avif",
      ],
      0xff800080: [
        "assets/img/sports4_4_purple_1.avif",
        "assets/img/sports4_4_purple_2.avif",
        "assets/img/sports4_4_purple_3.avif",
        "assets/img/sports4_4_purple_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 5_1",
    "name": "Ultimate Jacket",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 5",
    "color": {
      0xff00FF00: [
        "assets/img/sports5_1_green_1.avif",
        "assets/img/sports5_1_green_2.avif",
        "assets/img/sports5_1_green_3.avif",
        "assets/img/sports5_1_green_4.avif",
      ],
      0xff000000: [
        "assets/img/sports5_1_black_1.avif",
        "assets/img/sports5_1_black_2.avif",
        "assets/img/sports5_1_black_3.avif",
        "assets/img/sports5_1_black_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 5_2",
    "name": "Running UB HEAT.RDY Socks",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 5",
    "color": {
      0xff000000: [
        "assets/img/sports5_2_black_1.avif",
      ],
      0xffFFC0CB: [
        "assets/img/sports5_2_pink_1.avif",
      ],
      0xff00FF00: [
        "assets/img/sports5_2_green_1.avif",
      ],
      0xffC0C0C0: [
        "assets/img/sports5_2_silver_1.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 5_3",
    "name": "Own the Run Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 5",
    "color": {
      0xff000000: [
        "assets/img/sports5_3_black_1.avif",
      ],
      0xffFF0000: [
        "assets/img/sports5_3_red_1.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 5_4",
    "name": "Adizero Adios Pro 3 Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 5",
    "color": {
      0xff000000: [
        "assets/img/sports5_4_black_1.avif",
        "assets/img/sports5_4_black_2.avif",
        "assets/img/sports5_4_black_3.avif",
      ],
      0xff0000FF: [
        "assets/img/sports5_4_blue_1.avif",
        "assets/img/sports5_4_blue_2.avif",
        "assets/img/sports5_4_blue_3.avif",
      ],
      0xffADD8E6: [
        "assets/img/sports5_4_lightBlue_1.avif",
        "assets/img/sports5_4_lightBlue_2.avif",
        "assets/img/sports5_4_lightBlue_3.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 6_1",
    "name": "HIKING BOOTS",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 6",
    "color": {
      0xff000000: [
        "assets/img/shoes6_1_black_1.avif",
        "assets/img/shoes6_1_black_2.avif",
        "assets/img/shoes6_1_black_2.avif",
      ],
      0xff0000FF: [
        "assets/img/shoes6_1_blue_1.avif",
        "assets/img/shoes6_1_blue_2.avif",
        "assets/img/shoes6_1_blue_3.avif",
      ],
    },
    "size": ["6", "6.5", "7", "7.5", "8", "8.5", "9", "9.5"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 6_2",
    "name": "HIKING SHORTS",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 6",
    "color": {
      0xff000000: [
        "assets/img/sports5_3_black_1.avif",
      ],
      0xffFF0000: [
        "assets/img/sports5_3_red_1.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 6_3",
    "name": "HIKING SHORTS very comfortable for hiking and such",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 6",
    "color": {
      0xff800080: [
        "assets/img/sports4_1_purple_1.avif",
        "assets/img/sports4_1_purple_2.avif",
        "assets/img/sports4_1_purple_3.avif",
        "assets/img/sports4_1_purple_4.avif",
      ],
      0xffFFC0CB: [
        "assets/img/sports4_1_pink_1.avif",
        "assets/img/sports4_1_pink_2.avif",
        "assets/img/sports4_1_pink_3.avif",
        "assets/img/sports4_1_pink_4.avif",
      ],
      0xffA52A2A: [
        "assets/img/sports4_1_brown_1.avif",
        "assets/img/sports4_1_brown_2.avif",
        "assets/img/sports4_1_brown_3.avif",
        "assets/img/sports4_1_brown_4.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 7_1",
    "name": "TECHFIT Compression Training Long Tights",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 7",
    "color": {
      0xff000000: [
        "assets/img/sports7_1_black_1.avif",
        "assets/img/sports7_1_black_2.avif",
        "assets/img/sports7_1_black_3.avif",
        "assets/img/sports7_1_black_4.avif",
      ],
      0xff808080: [
        "assets/img/sports7_1_gray_1.avif",
        "assets/img/sports7_1_gray_2.avif",
        "assets/img/sports7_1_gray_3.avif",
      ],
      0xff0000FF: [
        "assets/img/sports7_1_blue_1.avif",
        "assets/img/sports7_1_blue_2.avif",
        "assets/img/sports7_1_blue_3.avif",
        "assets/img/sports7_1_blue_4.avif",
      ]
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 7_2",
    "name": "Designed for Training Workout Tee",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 7",
    "color": {
      0xff0000FF: [
        "assets/img/sports7_2_blue_1.avif",
        "assets/img/sports7_2_blue_2.avif",
        "assets/img/sports7_2_blue_3.avif",
        "assets/img/sports7_2_blue_4.avif",
      ],
      0xff000000: [
        "assets/img/sports7_2_black_1.avif",
        "assets/img/sports7_2_black_2.avif",
        "assets/img/sports7_3_black_3.avif",
        "assets/img/sports7_4_black_4.avif",
      ],
      0xff808080: [
        "assets/img/sports7_2_gray_1.avif",
        "assets/img/sports7_2_gray_2.avif",
        "assets/img/sports7_2_gray_3.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 7_3",
    "name": "adidas Designed to Move 3-Stripes Primeblue Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 7",
    "color": {
      0xff000000: [
        "assets/img/sports7_3_black_1.avif",
      ],
      0xff00FF00: [
        "assets/img/sports7_3_green_1.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 7_4",
    "name": "Designed for Training Workout Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 7",
    "color": {
      0xffFFC0CB: [
        "assets/img/sports7_4_pink_1.avif",
        "assets/img/sports7_4_pink_2.avif",
        "assets/img/sports7_4_pink_3.avif",
        "assets/img/sports7_4_pink_4.avif",
      ],
      0xff800080: [
        "assets/img/sports7_4_purple_1.avif",
        "assets/img/sports7_4_purple_2.avif",
        "assets/img/sports7_4_purple_3.avif",
        "assets/img/sports7_4_purple_4.avif",
      ],
      0xffA52A2A: [
        "assets/img/sports7_4_brown_1.avif",
        "assets/img/sports7_4_brown_2.avif",
        "assets/img/sports7_4_brown_3.avif",
        "assets/img/sports7_4_brown_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 7_5",
    "name": "Workout Crewneck Tee",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 7",
    "color": {
      0xff000000: [
        "assets/img/sports7_5_black_1.avif",
        "assets/img/sports7_5_black_2.avif",
        "assets/img/sports7_5_black_3.avif",
        "assets/img/sports7_5_black_4.avif",
      ],
      0xffE5C8A8: [
        "assets/img/sports7_5_desertSand_1.avif",
        "assets/img/sports7_5_desertSand_2.avif",
        "assets/img/sports7_5_desertSand_3.avif",
        "assets/img/sports7_5_desertSand_4.avif",
      ],
      0xff800080: [
        "assets/img/sports7_5_purple_1.avif",
        "assets/img/sports7_5_purple_2.avif",
        "assets/img/sports7_5_purple_3.avif",
        "assets/img/sports7_5_purple_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 8_1",
    "name": "Real Madrid 24/25 Home Authentic Jersey",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 8",
    "color": {
      0xffFFFFFF: [
        "assets/img/sports8_1_white_1.avif",
        "assets/img/sports8_1_white_2.avif",
        "assets/img/sports8_1_white_3.avif",
        "assets/img/sports8_1_white_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 8_2",
    "name": "Inter Miami CF 24/25 Messi Home Authentic Jersey",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 8",
    "color": {
      0xffFFC0CB: [
        "assets/img/sports8_2_pink_1.avif",
        "assets/img/sports8_2_pink_2.avif",
        "assets/img/sports8_2_pink_3.avif",
        "assets/img/sports8_2_pink_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 8_3",
    "name": "Argentina 24 Messi Home Jersey",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 8",
    "color": {
      0xffADD8E6: [
        "assets/img/sports8_3_lightBlue_1.avif",
        "assets/img/sports8_3_lightBlue_2.avif",
        "assets/img/sports8_3_lightBlue_3.avif",
        "assets/img/sports8_3_lightBlue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 8_4",
    "name": "Inter Miami CF 23/24 Messi Away Authentic Jersey",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 8",
    "color": {
      0xff000000: [
        "assets/img/sports8_4_black_1.avif",
        "assets/img/sports8_4_black_2.avif",
        "assets/img/sports8_4_black_3.avif",
        "assets/img/sports8_4_black_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 8_5",
    "name": "Real Madrid Kylian Mbappé 24/25 Home Jersey",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 8",
    "color": {
      0xffFFFFFF: [
        "assets/img/sports8_5_white_1.avif",
        "assets/img/sports8_5_white_2.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 9_1",
    "name": "Own The Run Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 9",
    "color": {
      0xffFFC0CB: [
        "assets/img/sports9_1_pink_1.avif",
        "assets/img/sports9_1_pink_2.avif",
        "assets/img/sports9_1_pink_3.avif",
        "assets/img/sports9_1_pink_4.avif",
      ],
      0xff000000: [
        "assets/img/sports9_1_black_1.avif",
        "assets/img/sports9_1_black_2.avif",
        "assets/img/sports9_1_black_3.avif",
        "assets/img/sports9_1_black_4.avif",
      ],
      0xff0000FF: [
        "assets/img/sports9_1_blue_1.avif",
        "assets/img/sports9_1_blue_2.avif",
        "assets/img/sports9_1_blue_3.avif",
        "assets/img/sports9_1_blue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 9_2",
    "name": "Own The Run Shorts",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 9",
    "color": {
      0xff0000FF: [
        "assets/img/sports9_1_blue_1.avif",
        "assets/img/sports9_1_blue_2.avif",
        "assets/img/sports9_1_blue_3.avif",
        "assets/img/sports9_1_blue_4.avif",
      ],
      0xffFFC0CB: [
        "assets/img/sports9_1_pink_1.avif",
        "assets/img/sports9_1_pink_2.avif",
        "assets/img/sports9_1_pink_3.avif",
        "assets/img/sports9_1_pink_4.avif",
      ],
      0xff000000: [
        "assets/img/sports9_1_black_1.avif",
        "assets/img/sports9_1_black_2.avif",
        "assets/img/sports9_1_black_3.avif",
        "assets/img/sports9_1_black_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 9_3",
    "name": "Ultraboost 5X Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 9",
    "color": {
      0xffFFFFFF: [
        "assets/img/sports9_3_white_1.avif",
        "assets/img/sports9_3_white_2.avif",
        "assets/img/sports9_3_white_3.avif",
        "assets/img/sports9_3_white_4.avif",
      ],
      0xffFF0000: [
        "assets/img/sports9_3_red_1.avif",
        "assets/img/sports9_3_red_2.avif",
        "assets/img/sports9_3_red_3.avif",
        "assets/img/sports9_3_red_4.avif",
      ],
      0xff000000: [
        "assets/img/sports9_3_black_1.avif",
        "assets/img/sports9_3_black_2.avif",
        "assets/img/sports9_3_black_3.avif",
      ],
      0xff808080: [
        "assets/img/sports9_3_gray_1.avif",
        "assets/img/sports9_3_gray_2.avif",
        "assets/img/sports9_3_gray_3.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 9_4",
    "name": "Ultraboost 5X Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 9",
    "color": {
      0xffFF0000: [
        "assets/img/sports9_3_red_1.avif",
        "assets/img/sports9_3_red_2.avif",
        "assets/img/sports9_3_red_3.avif",
        "assets/img/sports9_3_red_4.avif",
      ],
      0xffFFFFFF: [
        "assets/img/sports9_3_white_1.avif",
        "assets/img/sports9_3_white_2.avif",
        "assets/img/sports9_3_white_3.avif",
        "assets/img/sports9_3_white_4.avif",
      ],
      0xff000000: [
        "assets/img/sports9_3_black_1.avif",
        "assets/img/sports9_3_black_2.avif",
        "assets/img/sports9_3_black_3.avif",
      ],
      0xff808080: [
        "assets/img/sports9_3_gray_1.avif",
        "assets/img/sports9_3_gray_2.avif",
        "assets/img/sports9_3_gray_3.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 9_5",
    "name": "4DFWD 4 Running Shoes",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 9",
    "color": {
      0xff00FF00: [
        "assets/img/sports9_5_green_1.avif",
        "assets/img/sports9_5_green_2.avif",
        "assets/img/sports9_5_green_3.avif",
        "assets/img/sports9_5_green_4.avif",
      ],
      0xff000000: [
        "assets/img/sports9_5_black_1.avif",
        "assets/img/sports9_5_black_2.avif",
        "assets/img/sports9_5_black_3.avif",
        "assets/img/sports9_5_black_4.avif",
      ],
      0xff0000FF: [
        "assets/img/sports9_5_blue_1.avif",
        "assets/img/sports9_5_blue_2.avif",
        "assets/img/sports9_5_blue_3.avif",
        "assets/img/sports9_5_blue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 10_1",
    "name": "Mexico 24 Away Jersey",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 10",
    "color": {
      0xff00FF00: [
        "assets/img/sports10_1_green_1.avif",
        "assets/img/sports10_1_green_2.avif",
        "assets/img/sports10_1_green_3.avif",
        "assets/img/sports10_1_green_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 10_2",
    "name": "2024 Inter Miami CF adidas Archive Jersey",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 10",
    "color": {
      0xff00FF00: [
        "assets/img/sports10_2_green_1.avif",
        "assets/img/sports10_2_green_2.avif",
        "assets/img/sports10_3_green_3.avif",
        "assets/img/sports10_4_green_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 10_3",
    "name": "Italy 24 Home Jersey",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 10",
    "color": {
      0xff0000FF: [
        "assets/img/sports10_3_blue_1.avif",
        "assets/img/sports10_3_blue_2.avif",
        "assets/img/sports10_3_blue_3.avif",
        "assets/img/sports10_3_blue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 10_4",
    "name": "Al Nassr FC 24/25 Ronaldo Home Jersey",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 10",
    "color": {
      0xffFFFF00: [
        "assets/img/sports10_4_yellow_1.avif",
        "assets/img/sports10_4_yellow_2.avif",
        "assets/img/sports10_4_yellow_3.avif",
        "assets/img/sports10_4_yellow_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 11_1",
    "name": "Tiro 24 Training Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 11",
    "color": {
      0xff000000: [
        "assets/img/sports11_1_black_1.avif",
        "assets/img/sports11_1_black_2.avif",
        "assets/img/sports11_1_black_3.avif",
        "assets/img/sports11_1_black_4.avif",
      ],
      0xffFF0000: [
        "assets/img/sports11_1_red_1.avif",
        "assets/img/sports11_1_red_2.avif",
        "assets/img/sports11_1_red_3.avif",
        "assets/img/sports11_1_red_4.avif",
      ],
      0xff0000FF: [
        "assets/img/sports11_1_blue_1.avif",
        "assets/img/sports11_1_blue_2.avif",
        "assets/img/sports11_1_blue_3.avif",
        "assets/img/sports11_1_blue_4.avif",
      ],
      0xff00FF00: [
        "assets/img/sports11_1_green_1.avif",
        "assets/img/sports11_1_green_2.avif",
        "assets/img/sports11_1_green_3.avif",
        "assets/img/sports11_1_green_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 11_2",
    "name": "Tiro 24 Training Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 11",
    "color": {
      0xff00FF00: [
        "assets/img/sports11_1_green_1.avif",
        "assets/img/sports11_1_green_2.avif",
        "assets/img/sports11_1_green_3.avif",
        "assets/img/sports11_1_green_4.avif",
      ],
      0xff000000: [
        "assets/img/sports11_1_black_1.avif",
        "assets/img/sports11_1_black_2.avif",
        "assets/img/sports11_1_black_3.avif",
        "assets/img/sports11_1_black_4.avif",
      ],
      0xffFF0000: [
        "assets/img/sports11_1_red_1.avif",
        "assets/img/sports11_1_red_2.avif",
        "assets/img/sports11_1_red_3.avif",
        "assets/img/sports11_1_red_4.avif",
      ],
      0xff0000FF: [
        "assets/img/sports11_1_blue_1.avif",
        "assets/img/sports11_1_blue_2.avif",
        "assets/img/sports11_1_blue_3.avif",
        "assets/img/sports11_1_blue_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 11_3",
    "name": "Tiro 24 Training Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 11",
    "color": {
      0xff0000FF: [
        "assets/img/sports11_1_blue_1.avif",
        "assets/img/sports11_1_blue_2.avif",
        "assets/img/sports11_1_blue_3.avif",
        "assets/img/sports11_1_blue_4.avif",
      ],
      0xff00FF00: [
        "assets/img/sports11_1_green_1.avif",
        "assets/img/sports11_1_green_2.avif",
        "assets/img/sports11_1_green_3.avif",
        "assets/img/sports11_1_green_4.avif",
      ],
      0xff000000: [
        "assets/img/sports11_1_black_1.avif",
        "assets/img/sports11_1_black_2.avif",
        "assets/img/sports11_1_black_3.avif",
        "assets/img/sports11_1_black_4.avif",
      ],
      0xffFF0000: [
        "assets/img/sports11_1_red_1.avif",
        "assets/img/sports11_1_red_2.avif",
        "assets/img/sports11_1_red_3.avif",
        "assets/img/sports11_1_red_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 11_4",
    "name": "Tiro 24 Training Pants",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 11",
    "color": {
      0xffFF0000: [
        "assets/img/sports11_1_red_1.avif",
        "assets/img/sports11_1_red_2.avif",
        "assets/img/sports11_1_red_3.avif",
        "assets/img/sports11_1_red_4.avif",
      ],
      0xff0000FF: [
        "assets/img/sports11_1_blue_1.avif",
        "assets/img/sports11_1_blue_2.avif",
        "assets/img/sports11_1_blue_3.avif",
        "assets/img/sports11_1_blue_4.avif",
      ],
      0xff00FF00: [
        "assets/img/sports11_1_green_1.avif",
        "assets/img/sports11_1_green_2.avif",
        "assets/img/sports11_1_green_3.avif",
        "assets/img/sports11_1_green_4.avif",
      ],
      0xff000000: [
        "assets/img/sports11_1_black_1.avif",
        "assets/img/sports11_1_black_2.avif",
        "assets/img/sports11_1_black_3.avif",
        "assets/img/sports11_1_black_4.avif",
      ],
    },
    "size": ["XS", "S", "M", "L", "XL", "2XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 12_1",
    "name": "Excel Lunch Bag",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 12",
    "color": {
      0xff000000: [
        "assets/img/sports12_1_black_1.avif",
        "assets/img/sports12_1_black_2.avif",
        "assets/img/sports12_1_black_3.avif",
      ],
      0xff0000FF: [
        "assets/img/sports12_1_blue_1.avif",
        "assets/img/sports12_1_blue_2.avif",
        "assets/img/sports12_1_blue_3.avif",
      ],
    },
    "size": [
      "NO SIZE",
    ],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 12_2",
    "name": "Select Basketball Crew Socks",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 12",
    "color": {
      0xff000000: [
        "assets/img/sports12_2_black_1.avif",
        "assets/img/sports12_2_black_2.avif",
        "assets/img/sports12_2_black_3.avif",
        "assets/img/sports12_2_black_4.avif",
      ],
      0xffFFFFFF: [
        "assets/img/sports12_2_white_1.avif",
        "assets/img/sports12_2_white_2.avif",
        "assets/img/sports12_2_white_3.avif",
        "assets/img/sports12_2_white_4.avif",
      ],
    },
    "size": [
      "NO SIZE",
    ],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 12_3",
    "name": "adidas by Stella McCartney Beanie",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 12",
    "color": {
      0xff000000: [
        "assets/img/sports12_3_black_1.avif",
        "assets/img/sports12_3_black_2.avif",
        "assets/img/sports12_3_black_3.avif",
      ],
      0xffFFA500: [
        "assets/img/sports12_3_orange_1.avif",
        "assets/img/sports12_3_orange_2.avif",
        "assets/img/sports12_3_orange_3.avif",
      ],
    },
    "size": [
      "NO SIZE",
    ],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 12_4",
    "name": "UCL League 24/25 League Phase Ball",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 12",
    "color": {
      0xffFFFFFF: [
        "assets/img/sports12_4_white_1.avif",
        "assets/img/sports12_4_white_2.avif",
        "assets/img/sports12_4_white_3.avif",
      ],
    },
    "size": [
      "NO SIZE",
    ],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 12_5",
    "name": "Terrex Merino Wool Gloves",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 12",
    "color": {
      0xff000000: [
        "assets/img/sports12_5_black_1.avif",
        "assets/img/sports12_5_black_2.avif",
        "assets/img/sports12_5_black_3.avif",
      ],
    },
    "size": ["S", "M", "L", "XL"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 12_6",
    "name": "Steel Metal Bottle 600 ML",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 12",
    "color": {
      0xffC0C0C0: [
        "assets/img/accessories7_3_silver_1.avif",
        "assets/img/accessories7_3_silver_2.avif",
        "assets/img/accessories7_3_silver_3.avif",
      ],
      0xff000000: [
        "assets/img/accessories7_3_black_1.avif",
        "assets/img/accessories7_3_black_2.avif",
        "assets/img/accessories7_3_black_3.avif",
        "assets/img/accessories7_3_black_4.avif",
      ],
      0xff808080: [
        "assets/img/accessories7_3_gray_1.avif",
        "assets/img/accessories7_3_gray_2.avif",
        "assets/img/accessories7_3_gray_3.avif",
        "assets/img/accessories7_3_gray_4.avif",
      ]
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 12_7",
    "name": "Superlite 3 Hat",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 12",
    "color": {
      0xffFFC0CB: [
        "assets/img/sports12_7_pink_1.avif",
        "assets/img/sports12_7_pink_2.avif",
        "assets/img/sports12_7_pink_3.avif",
        "assets/img/sports12_7_pink_4.avif",
      ],
      0xff000000: [
        "assets/img/sports12_7_black_1.avif",
        "assets/img/sports12_7_black_2.avif",
        "assets/img/sports12_7_black_3.avif",
        "assets/img/sports12_7_black_4.avif",
      ],
      0xffADD8E6: [
        "assets/img/sports12_7_lightBlue_1.avif",
        "assets/img/sports12_7_lightBlue_2.avif",
        "assets/img/sports12_7_lightBlue_3.avif",
        "assets/img/sports12_7_lightBlue_4.avif",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 12_8",
    "name": "STiro Shin Guards MTC",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 12",
    "color": {
      0xffFFC0CB: [
        "assets/img/sports12_8_black_1.avif",
        "assets/img/sports12_8_black_2.avif",
        "assets/img/sports12_8_black_3.avif",
      ],
    },
    "size": ["S", "M", "L", "XLS"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
  {
    "featured": "New Arrivals",
    "product_id": "sports 12_9",
    "name": "One-Shoulder Backpack",
    "price": 50000,
    "realprice": 55000,
    "discount": 10,
    "title":
        "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
    "description":
        "This product has sustainability features recognized by trusted certifications.",
    "category": "SPORTS",
    "sub_category_id": "Sports 12",
    "color": {
      0xffC0C0C0: [
        "assets/img/sports12_9_silver_1.avif",
        "assets/img/sports12_9_silver_2.avif",
        "assets/img/sports12_9_silver_3.avif",
        "assets/img/sports12_9_silver_4.avif",
      ],
    },
    "size": ["NO SIZE"],
    "reviews": [
      {
        "profile_pic":
            "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
        "name": "John Doe",
        "date": "12/1/2023",
        "review":
            "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
        "reviews_img": [
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
          "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
        ]
      },
    ],
    "attributes": {
      "Material": "Stainless Steel",
      "Water Resistance": "50 meters",
      "Movement": "Quartz",
      "Color": "Silver",
      "Item id": "WATCH001"
    },
  },
];


//OLD DATA
// {
//   "featured": "For You",
//   "product_id": "3",
//   "name":
//       "Fruit of the Loom Unisex Adult Eversoft Fleece Hoodie Luxury Watch with Stainless Steel",
//   "price": 50000,
//   "realprice": 55000,
//   "discount": 10,
//   "title":
//       "Luxury Watch with Stainless Steel Band Luxury Watch with Stainless Steel Band",
//   "description":
//       "This product has sustainability features recognized by trusted certifications.",
//   "category": "Hoodie",
//   "sub_category_id": "Hoodie1",
//   "color": {
//     0xffFF0000: [
//       "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/614TaLu695L._AC_SY879_.jpg",
//     ],
//     0xff00FF00: [
//       "https://m.media-amazon.com/images/I/71XwoHi57-L._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/71hp94a7oXL._AC_SY879_.jpg",
//     ],
//     0xff0000FF: [
//       "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/71yhH-4L-jL._AC_SY879_.jpg",
//     ]
//   },
//   "size": ["S", "M", "L", "XL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ]
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ]
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       // "reviews_img": [
//       //   "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//       //   "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       //   "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//       //   "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       // ]
//     }
//   ],
//   "attributes": {
//     "Material": "Stainless",
//     "Water Resistance": "50 meters",
//     "Movement": "Quartz",
//     "Color": "Silver",
//     "Item id": "WATCH001"
//   },
// },
//
// {
//   "featured": "All",
//   "product_id": "4",
//   "name": "Formal Shirt",
//   "price": 1500,
//   "realprice": 2000,
//   "discount": 10,
//   "title": "Men's Classic Fit Formal Shirt",
//   "description":
//       "A classic fit formal shirt made from high-quality cotton, perfect for professional or formal occasions.",
//   "category": "Shirts",
//   "sub_category_id": "Shirts1",
//   "color": {
//     0xffFF0000: [
//       "https://m.media-amazon.com/images/I/71aKidQJwhL._AC_SX679_.jpg",
//       "https://m.media-amazon.com/images/I/716rmT9SzGL._AC_SX679_.jpg",
//     ],
//     0xff00FF00: [
//       "https://m.media-amazon.com/images/I/81m+pQS6wjL._AC_SX679_.jpg",
//       "https://m.media-amazon.com/images/I/71S2NCqqL1L._AC_SX679_.jpg",
//     ],
//   },
//   "size": ["S", "M", "L", "XL", "XXL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Cotton",
//     "Fit": "Classic",
//     "Sleeves": "Long Sleeves",
//     "Item id": "SHIRT001"
//   },
// },
//
// {
//   "featured": "Popular",
//   "product_id": "5",
//   "name": "Leather Jeans",
//   "price": 1000,
//   "realprice": 1200,
//   "discount": 10,
//   "title": "Genuine Leather Travel Bag",
//   "description":
//       "This premium leather Jeans offers durability and ample space, perfect for weekend getaways or business trips.",
//   "category": "Jeans",
//   "sub_category_id": "Jeans1",
//   "color": {
//     0xffFF0000: [
//       "https://m.media-amazon.com/images/I/61AUJQmC+3L._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/61VggtxXYuL._AC_SY879_.jpg",
//     ],
//     0xff00FF00: [
//       "https://m.media-amazon.com/images/I/71+c5YS2a0L._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/71B5kyf5vsL._AC_SY879_.jpg",
//     ],
//   },
//   "size": ["S", "M", "L", "XL", "XXL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Leather",
//     "Capacity": "35 Liters",
//     "Item id": "BAG001"
//   },
// },
//
// {
//   "featured": "Best Seller",
//   "product_id": "6",
//   "name": "Under Armour Men's Charged Assert 9 Running Shoe",
//   "price": 8000,
//   "realprice": 9000,
//   "discount": 10,
//   "title": "Air Force",
//   "description":
//       "This premium leather travel Air Force offers durability and ample space, perfect for weekend getaways or business trips.",
//   "category": "Shoes",
//   "sub_category_id": "Shoes1",
//   "color": {
//     0xffFF0000: [
//       "https://m.media-amazon.com/images/I/517w5lVaUjL._AC_SY695_.jpg",
//       "https://m.media-amazon.com/images/I/518HbmAoFiL._AC_SY695_.jpg",
//     ],
//     0xff0000FF: [
//       "https://m.media-amazon.com/images/I/51Ms5hzZGPL._AC_SY695_.jpg",
//       "https://m.media-amazon.com/images/I/514Eod8cJhL._AC_SY695_.jpg",
//     ],
//   },
//   "size": ["S", "M", "L", "XL", "XXL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Leather",
//     "Capacity": "35 Liters",
//     "Item id": "BAG001"
//   },
// },
//
// {
//   "featured": "Latest Product",
//   "product_id": "7",
//   "name":
//       "Champion Men'S Jacket, Stadium Full-Zip Jacket, Wind Resistant, Water Resistant Jacket For Men",
//   "price": 8000,
//   "realprice": 9000,
//   "discount": 10,
//   "title": "Jackets",
//   "description":
//       "This premium leather travel Jacket offers durability and ample space, perfect for weekend getaways or business trips.",
//   "category": "Jackets",
//   "sub_category_id": "Jackets1",
//   "color": {
//     0xffFF0000: [
//       "https://m.media-amazon.com/images/I/71OBa9zAL2L._AC_SX679_.jpg",
//       "https://m.media-amazon.com/images/I/81Q2563dDSL._AC_SX679_.jpg",
//     ],
//     0xff0000FF: [
//       "https://m.media-amazon.com/images/I/71GQCtYmKSL._AC_SX679_.jpg",
//       "https://m.media-amazon.com/images/I/71fS8uG9ayL._AC_SX679_.jpg",
//     ],
//   },
//   "size": ["S", "M", "L", "XL", "XXL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Leather",
//     "Capacity": "35 Liters",
//     "Item id": "BAG001"
//   },
// },
//
// {
//   "featured": "Latest Product",
//   "product_id": "8",
//   "name": "Best Hoodie ",
//   "price": 8000,
//   "realprice": 9000,
//   "discount": 10,
//   "title": "Bag",
//   "description":
//       "This premium leather travel Jacket offers durability and ample space, perfect for weekend getaways or business trips.",
//   "category": "Hoodie",
//   "sub_category_id": "Hoodie2",
//   "color": {
//     0xff000000: [
//       "https://images.pexels.com/photos/1192335/pexels-photo-1192335.jpeg?cs=srgb&dl=pexels-lilartsy-1192335.jpg&fm=jpg",
//     ],
//   },
//   "size": ["S", "M", "L", "XL", "XXL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Leather",
//     "Capacity": "35 Liters",
//     "Item id": "BAG001"
//   },
// },
// {
//   "featured": "Latest Product",
//   "product_id": "9",
//   "name": "Shirts",
//   "price": 8000,
//   "realprice": 9000,
//   "discount": 10,
//   "title": "Shirts",
//   "description":
//       "This premium leather travel Jacket offers durability and ample space, perfect for weekend getaways or business trips.",
//   "category": "Shirts",
//   "sub_category_id": "Shirts2",
//   "color": {
//     0xffFF0000: [
//       "https://plus.unsplash.com/premium_photo-1708274147720-abd218b3a3bd?q=80&w=3348&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//     ],
//   },
//   "size": ["S", "M", "L", "XL", "XXL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Leather",
//     "Capacity": "35 Liters",
//     "Item id": "BAG001"
//   },
// },
// {
//   "featured": "Latest Product",
//   "product_id": "10",
//   "name": "Jeans",
//   "price": 8000,
//   "realprice": 9000,
//   "discount": 10,
//   "title": "Shirts",
//   "description":
//       "This premium leather travel Jacket offers durability and ample space, perfect for weekend getaways or business trips.",
//   "category": "Jeans",
//   "sub_category_id": "Shirts3",
//   "color": {
//     0xffFF0000: [
//       "https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=3426&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//     ],
//   },
//   "size": ["S", "M", "L", "XL", "XXL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Leather",
//     "Capacity": "35 Liters",
//     "Item id": "BAG001"
//   },
// },
// {
//   "featured": "Latest Product",
//   "product_id": "11",
//   "name": "Jackets",
//   "price": 8000,
//   "realprice": 9000,
//   "discount": 10,
//   "title": "Jackets",
//   "description":
//       "This premium leather travel Jacket offers durability and ample space, perfect for weekend getaways or business trips.",
//   "category": "Jackets",
//   "sub_category_id": "Jackets2",
//   "color": {
//     0xffFF0000: [
//       "https://images.unsplash.com/photo-1649178466381-8fc163d344fd?q=80&w=3168&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//     ],
//   },
//   "size": ["S", "M", "L", "XL", "XXL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Leather",
//     "Capacity": "35 Liters",
//     "Item id": "BAG001"
//   },
// },
// {
//   "featured": "Latest Product",
//   "product_id": "11",
//   "name": "Shoes",
//   "price": 8000,
//   "realprice": 9000,
//   "discount": 10,
//   "title": "Jackets",
//   "description":
//       "This premium leather travel Jacket offers durability and ample space, perfect for weekend getaways or business trips.",
//   "category": "Shoes",
//   "sub_category_id": "Jackets3",
//   "color": {
//     0xffFF0000: [
//       "https://images.unsplash.com/photo-1511556532299-8f662fc26c06?q=80&w=3270&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
//     ],
//   },
//   "size": ["S", "M", "L", "XL", "XXL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Leather",
//     "Capacity": "35 Liters",
//     "Item id": "BAG001"
//   },
// },
// //NEW DATA
// {
//   "featured": "Latest Product",
//   "product_id": "12",
//   "name": "Nike Unisex Dri-Fit T-Shirt",
//   "price": 30000,
//   "realprice": 35000,
//   "discount": 15,
//   "title": "Premium T-Shirt with Dri-Fit Technology",
//   "description":
//       "Stay comfortable with breathable fabric that wicks sweat away.",
//   "category": "Shirts",
//   "sub_category_id": "Shirts4",
//   "color": {
//     0xff000000: [
//       'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/1caf6ac0-ac69-4eea-b2c3-1c36dabc9d35/U+NK+SB+BOWLER+SSBTNUP+O+AGN.png',
//       // "https://m.media-amazon.com/images/I/61SdpDgO5kL._AC_SY879_.jpg",
//       // "https://m.media-amazon.com/images/I/61YuTDE6GbL._AC_SY879_.jpg"
//     ],
//     0xffFFFFFF: [
//       "https://m.media-amazon.com/images/I/61yXJgD92wL._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/61-+FCm4lBL._AC_SY879_.jpg"
//     ]
//   },
//   "size": ["S", "M", "L", "XL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Dri-Fit Polyester",
//     "Technology": "Sweat Wicking",
//     "Fit": "Regular",
//     "Color": "Black",
//     "Item id": "SHIRT001"
//   },
// },
// {
//   "featured": "Latest Product",
//   "product_id": "13",
//   "name": "Levi's Men's 511 Slim Fit Jeans",
//   "price": 70000,
//   "realprice": 80000,
//   "discount": 12,
//   "title": "Comfortable Slim Fit Jeans with Stretch",
//   "description": "Classic slim-fit jeans, perfect for everyday wear.",
//   "category": "Jeans",
//   "sub_category_id": "Jeans2",
//   "color": {
//     0xff1F1F1F: [
//       "https://lsco.scene7.com/is/image/lsco/045116003-dynamic1-pdp?fmt=webp&qlt=70&resMode=sharp2&fit=crop,1&op_usm=0.6,0.6,8&wid=1148&hei=1531",
//       "https://m.media-amazon.com/images/I/71qgHGcKcdL._AC_SY879_.jpg"
//     ],
//     0xff8B4513: [
//       "https://m.media-amazon.com/images/I/71uIqXNZCzL._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/71Mb5y9CQaL._AC_SY879_.jpg"
//     ]
//   },
//   "size": ["28", "30", "32", "34", "36", "38"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "98% Cotton, 2% Elastane",
//     "Fit": "Slim",
//     "Stretch": "Comfort Stretch",
//     "Color": "Black",
//     "Item id": "JEANS001"
//   },
// },
// {
//   "featured": "Latest Product",
//   "product_id": "14",
//   "name": "Adidas Men's Running Shoes",
//   "price": 120000,
//   "realprice": 130000,
//   "discount": 8,
//   "title": "Lightweight Running Shoes with Breathable Mesh",
//   "description":
//       "Designed for comfort and speed, these shoes offer great support for running.",
//   "category": "Shoes",
//   "sub_category_id": "Shoes2",
//   "color": {
//     0xff808080: [
//       "https://assets.adidas.com/images/w_766,h_766,f_auto,q_auto,fl_lossy,c_fill,g_auto/5797dfecc81b4d4fbf9b8d5e16406a89_9366/ultraboost-5x-shoes.jpg",
//       "https://assets.adidas.com/images/w_766,h_766,f_auto,q_auto,fl_lossy,c_fill,g_auto/2b217236e6b3423c9415de4a4fb2fcc8_9366/ultraboost-5x-shoes.jpg"
//     ],
//     0xff000000: [
//       "https://m.media-amazon.com/images/I/71hDqMBTHvL._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/71DEgT7Q4YL._AC_SY879_.jpg"
//     ]
//   },
//   "size": ["8", "9", "10", "11", "12"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Mesh Upper",
//     "Sole": "Rubber",
//     "Support": "Arch Support",
//     "Color": "Gray",
//     "Item id": "SHOE001"
//   },
// },
// {
//   "featured": "Latest Product",
//   "product_id": "15",
//   "name": "The North Face Men's Puffer Jacket",
//   "price": 180000,
//   "realprice": 200000,
//   "discount": 10,
//   "title": "Warm and Lightweight Puffer Jacket",
//   "description":
//       "Insulated and lightweight, this jacket is perfect for cold weather.",
//   "category": "Jackets1",
//   "sub_category_id": "",
//   "color": {
//     0xff2F4F4F: [
//       "https://assets.thenorthface.com/images/t_img/c_pad,b_white,f_auto,h_650,w_555,e_sharpen:70/NF0A3C8D4G3-HERO/Mens-1996-Retro-Nuptse-Jacket-in-TNF-Black.png",
//       "https://assets.thenorthface.com/images/t_img/c_pad,b_white,f_auto,h_650,w_555,e_sharpen:70/NF0A84I14GV-HERO/Mens-Aconcagua-3-Hoodie-in-Summit-Navy.png"
//     ],
//     0xff696969: [
//       "https://m.media-amazon.com/images/I/71EeypX90eL._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/71Ul1dXdjsL._AC_SY879_.jpg"
//     ]
//   },
//   "size": ["S", "M", "L", "XL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Polyester",
//     "Insulation": "Down",
//     "Water Resistance": "Water-Resistant",
//     "Color": "Dark Green",
//     "Item id": "JACKET001"
//   },
// },
// {
//   "featured": "Latest Product",
//   "product_id": "16",
//   "name": "Fruit of the Loom Unisex Adult Eversoft Fleece Hoodie",
//   "price": 50000,
//   "realprice": 55000,
//   "discount": 10,
//   "title": "Luxury Watch with Stainless Steel Band",
//   "description":
//       "This product has sustainability features recognized by trusted certifications.",
//   "category": "Hoodie",
//   "sub_category_id": "Hoodie3",
//   "color": {
//     0xffFF0000: [
//       "https://m.media-amazon.com/images/I/51UStNtA3RL._AC_SX679_.jpg",
//       "https://m.media-amazon.com/images/I/614TaLu695L._AC_SY879_.jpg",
//     ],
//     0xff00FF00: [
//       "https://m.media-amazon.com/images/I/71XwoHi57-L._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/71hp94a7oXL._AC_SY879_.jpg",
//     ],
//     0xff0000FF: [
//       "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/71yhH-4L-jL._AC_SY879_.jpg",
//     ]
//   },
//   "size": ["S", "M", "L", "XL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Stainless Steel",
//     "Water Resistance": "50 meters",
//     "Movement": "Quartz",
//     "Color": "Silver",
//     "Item id": "WATCH001"
//   },
// },
//
// {
//   "featured": "Latest Product",
//   "product_id": "17",
//   "name": "LK Unisex Dri-Fit T-Shirt",
//   "price": 30000,
//   "realprice": 35000,
//   "discount": 15,
//   "title": "Premium T-Shirt with Dri-Fit Technology",
//   "description":
//       "Stay comfortable with breathable fabric that wicks sweat away.",
//   "category": "Shirts",
//   "sub_category_id": "Shirts5",
//   "color": {
//     0xff000000: [
//       'https://eu.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-crystal-embellished-cotton-t-shirt-ready-to-wear--HSY03WNPG900_PM2_Front%20view.png?wid=1440&hei=1440',
//       'https://eu.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-embroidered-cotton-t-shirt-ready-to-wear--HRY64WNPG002_PM1_Worn%20view.png?wid=1440&hei=1440',
//       // "https://m.media-amazon.com/images/I/61SdpDgO5kL._AC_SY879_.jpg",
//       // "https://m.media-amazon.com/images/I/61YuTDE6GbL._AC_SY879_.jpg"
//     ],
//     0xffFFFFFF: [
//       "https://m.media-amazon.com/images/I/61yXJgD92wL._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/61-+FCm4lBL._AC_SY879_.jpg"
//     ]
//   },
//   "size": ["S", "M", "L", "XL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Dri-Fit Polyester",
//     "Technology": "Sweat Wicking",
//     "Fit": "Regular",
//     "Color": "Black",
//     "Item id": "SHIRT001"
//   },
// },
// {
//   "featured": "Latest Product",
//   "product_id": "18",
//   "name": "Levi's Men's 511 Slim Fit Jeans",
//   "price": 70000,
//   "realprice": 80000,
//   "discount": 12,
//   "title": "Comfortable Slim Fit Jeans with Stretch",
//   "description": "Classic slim-fit jeans, perfect for everyday wear.",
//   "category": "Jeans",
//   "sub_category_id": "Jeans3",
//   "color": {
//     0xff1F1F1F: [
//       "https://slimages.macysassets.com/is/image/MCY/products/5/optimized/9831075_fpx.tif?op_sharpen=1&wid=500&fit=fit,1&fmt=webp",
//       "https://slimages.macysassets.com/is/image/MCY/products/9/optimized/22394069_fpx.tif?op_sharpen=1&wid=500&fit=fit,1&fmt=webp",
//     ],
//     0xff8B4513: [
//       "https://m.media-amazon.com/images/I/71uIqXNZCzL._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/71Mb5y9CQaL._AC_SY879_.jpg"
//     ]
//   },
//   "size": ["28", "30", "32", "34", "36", "38"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "98% Cotton, 2% Elastane",
//     "Fit": "Slim",
//     "Stretch": "Comfort Stretch",
//     "Color": "Black",
//     "Item id": "JEANS001"
//   },
// },
// {
//   "featured": "Latest Product",
//   "product_id": "14",
//   "name": "GoldStar Men's Running Shoes",
//   "price": 120000,
//   "realprice": 130000,
//   "discount": 8,
//   "title": "Lightweight Running Shoes with Breathable Mesh",
//   "description":
//       "Designed for comfort and speed, these shoes offer great support for running.",
//   "category": "Shoes",
//   "sub_category_id": "Shoes3",
//   "color": {
//     0xff808080: [
//       "https://www.goldstarshoes.com/MediaThumb/medium/Media/concordair_black_white-1.jpg",
//       "https://www.goldstarshoes.com/MediaThumb/medium/Media/concordair_black_white-2.jpg"
//     ],
//     0xff000000: [
//       "https://m.media-amazon.com/images/I/71hDqMBTHvL._AC_SY879_.jpg",
//       "https://m.media-amazon.com/images/I/71DEgT7Q4YL._AC_SY879_.jpg"
//     ]
//   },
//   "size": ["8", "9", "10", "11", "12"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Mesh Upper",
//     "Sole": "Rubber",
//     "Support": "Arch Support",
//     "Color": "Gray",
//     "Item id": "SHOE001"
//   },
// },
// {
//   "featured": "Latest Product",
//   "product_id": "15",
//   "name": "Polyester Light Weight Casual Lined Standard Length Jacket",
//   "price": 1800,
//   "realprice": 2000,
//   "discount": 10,
//   "title": "Warm and Lightweight Puffer Jacket",
//   "description":
//       "Insulated and lightweight, this jacket is perfect for cold weather.",
//   "category": "Jackets",
//   "sub_category_id": "Jackets4",
//   "color": {
//     0xff2F4F4F: [
//       "https://m.media-amazon.com/images/I/71gnMeN6XSL._SY879_.jpg",
//       "https://m.media-amazon.com/images/I/71wY7-eKDNL._SY879_.jpg"
//     ],
//     0xff696969: [
//       "https://m.media-amazon.com/images/I/61KjuG8yyXL._SY879_.jpg",
//       "https://m.media-amazon.com/images/I/71FMUumpMIL._SY879_.jpg"
//     ]
//   },
//   "size": ["S", "M", "L", "XL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Polyester",
//     "Insulation": "Down",
//     "Water Resistance": "Water-Resistant",
//     "Color": "Dark Green",
//     "Item id": "JACKET001"
//   },
// },
// {
//   "featured": "Latest Product",
//   "product_id": "16",
//   "name":
//       "Popfunk Looney Tunes Catch Phrases Collection Official Premium Ultrasoft Tri-Blend Hoodie",
//   "price": 50000,
//   "realprice": 55000,
//   "discount": 10,
//   "title": "Luxury Watch with Stainless Steel Band",
//   "description":
//       "This product has sustainability features recognized by trusted certifications.",
//   "category": "Hoodie",
//   "sub_category_id": "Hoodie4",
//   "color": {
//     0xffFF0000: [
//       "https://m.media-amazon.com/images/I/61hBWi8erpL._AC_SX679_.jpg",
//       "https://m.media-amazon.com/images/I/71e9FtaE2XL._AC_SY741_.jpg",
//     ],
//     0xff00FF00: [
//       "https://m.media-amazon.com/images/I/51jV-mcYXpL._AC_SX679_.jpg",
//       "https://m.media-amazon.com/images/I/61wP-prQDnL._AC_SY741_.jpg",
//     ],
//     // 0xff0000FF: [
//     //   "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//     //   "https://m.media-amazon.com/images/I/71yhH-4L-jL._AC_SY879_.jpg",
//     // ]
//   },
//   "size": ["S", "M", "L", "XL"],
//   "reviews": [
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//     },
//     {
//       "profile_pic":
//           "https://as1.ftcdn.net/v2/jpg/07/49/63/66/1000_F_749636629_P8NFQgXz7SjF7zI70zhNHGxW9fTddq0w.jpg",
//       "name": "John Doe",
//       "date": "12/1/2023",
//       "review":
//           "A beautiful and well-crafted luxury hoodie. The design and functionality are outstanding!",
//       "reviews_img": [
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71PmVQNCv-L._AC_SY879_.jpg",
//         "https://m.media-amazon.com/images/I/71rb-+G4g2L._AC_SY879_.jpg",
//       ],
//     },
//   ],
//   "attributes": {
//     "Material": "Stainless Steel",
//     "Water Resistance": "50 meters",
//     "Movement": "Quartz",
//     "Color": "Silver",
//     "Item id": "WATCH001"
//   },
//   },
// ];
