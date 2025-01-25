class ProductItem {
  String imageProduct;
  String nameProduct;
  String descriptionProduct;
  double price;
  Raiting raiting;

  ProductItem({
    required this.imageProduct,
    required this.nameProduct,
    required this.descriptionProduct,
    required this.price,
    required this.raiting,
  });

  factory ProductItem.fromJson(Map<String, dynamic> json) => ProductItem(
        imageProduct: json["image"],
        nameProduct: json["title"],
        descriptionProduct: json["description"],
        price: json["price"].toDouble(),
        raiting: Raiting.fromJson(json["rating"]),
      );
}

class Raiting {
  num rate;
  num count;

  Raiting({required this.rate, required this.count});

  factory Raiting.fromJson(Map<String, dynamic> json) =>
      Raiting(rate: json["rate"], count: json["count"]);
}
