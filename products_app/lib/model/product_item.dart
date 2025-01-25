class ProductItem {
  // int productId;
  String imageProduct;
  String nameProduct;
  double price;
  Raiting raiting;
  // String priceWithDiscount;
  // bool favorite;

  ProductItem({
    // this.productId,
    required this.imageProduct,
    required this.nameProduct,
    required this.price,
    required this.raiting,
    // required this.priceWithDiscount,
    // required this.favorite
  });

  factory ProductItem.fromJson(Map<String, dynamic> json) => ProductItem(
        imageProduct: json["image"],
        nameProduct: json["title"],
        price: json["price"],
        raiting: Raiting.fromJson(json["raiting"]),
      );
}

class Raiting {
  double rate;
  int count;

  Raiting({required this.rate, required this.count});

  factory Raiting.fromJson(Map<String, dynamic> json) =>
      Raiting(rate: json["rate"].toDouble(), count: json["count"]);
}

// {
//         "id": 1,
//         "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
//         "price": 109.95,
//         "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
//         "category": "men's clothing",
//         "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
//         "rating": {
//             "rate": 3.9,
//             "count": 120
//         }
//     },