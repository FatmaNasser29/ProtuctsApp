import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:route_camp/model/product_item.dart';

class ApiManger {
  static String apiUrl = "https://fakestoreapi.com/products";

  static Future<List<ProductItem>> FeachProductsList() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      return data.map((item) => ProductItem.fromJson(item)).toList();
    } else {
      throw Exception("failed to get products list......");
    }
  }
}
//  final List<dynamic> data = jsonDecode(response.body);
//       return data.map((item) => Product.fromJson(item)).toList();