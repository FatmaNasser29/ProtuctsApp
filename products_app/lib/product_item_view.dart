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
          side: BorderSide(color: Colors.blue, width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                  // fit: StackFit.expand,
                  children: [
                    Container(
                      child: Image.asset(
                        productItem.imageProduct,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Container(
                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: CircleBorder()),
                          onPressed: () {},
                          child: Icon(
                            Icons.favorite_border,
                            size: 40,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    )
                  ]),
              Text(productItem.nameProduct),
              Text("product info"),
              Row(
                children: [
                  Text("${productItem.price * .50}"),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "${productItem.price}",
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  )
                ],
              ),
              Row(
                children: [
                  Text("review"),
                  Text("(-----)"),
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
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //       backgroundColor: Colors.blueAccent,
                  //       shape: CircleBorder()),
                  //   onPressed: () {},
                  //   child: Icon(
                  //     Icons.add_circle_outline_sharp,
                  //     size: 15,
                  //     color: Colors.white,
                  //   ),
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
