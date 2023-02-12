import 'dart:convert';

import 'package:http/http.dart' as http;

import '../product.dart';

class FetchService {
  static var client = http.Client();

  static Future<Product?> fetchProducts() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return null;
    }
  }
}
