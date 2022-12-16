import 'dart:convert';

import 'package:eshop/models/models.dart';
import 'package:eshop/services/api_service.dart';

class ProductsRepo {
  final _apiService = ApiService();

  List<Product> parseProducts(String? responseBody) {
    if (responseBody != null) {
      final json = jsonDecode(responseBody) as Map<String, dynamic>;
      final productsJson = json["data"]["products"]["results"];
      print(productsJson);
      final products = [
        for (final productJson in productsJson) Product.fromJson(productJson)
      ];
      return products;
    }
    return [];
  }

  Future<List<Product>> getProducts() async {
    final response = await _apiService.fetchProducts();
    final responseBody = await response?.stream.bytesToString();
    return parseProducts(responseBody);

    //use when need to parse too big json data like 1mb
    //compute(parseProducts, responseBody);
  }
}
