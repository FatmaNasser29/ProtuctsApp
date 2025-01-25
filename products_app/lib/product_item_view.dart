import 'package:flutter/material.dart';
import 'package:route_camp/model/product_item.dart';

class ProductItemView extends StatelessWidget {
  final ProductItem productItem;
  ProductItemView({required this.productItem, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue, width: 1.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                  // fit: StackFit.expand,
                  children: [
                    Image.network(
                      productItem.imageProduct,
                      height: 130,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 32,
                          width: 32,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            size: 25,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ]),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Text(
                      productItem.nameProduct,
                      maxLines: 2,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      productItem.descriptionProduct,
                      maxLines: 2,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "EGP ${productItem.price * .50}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${productItem.price}",
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("Review (${productItem.raiting.rate})"),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add_circle_rounded,
                            color: Colors.blue,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
