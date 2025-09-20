import 'dart:convert';

import 'package:store_app/Models/Product_Model.dart';
import 'package:http/http.dart' as http;

class AllProductsServices {
  Future<List> getAllProducts() async {
    http.Response resresponse = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );
    if (resresponse.statusCode == 200) {
      {
        List<dynamic> data = jsonDecode(resresponse.body);
        List<ProductModel> productsList = [];
        for (var i = 0; i < data.length; i++) {
          productsList.add(ProductModel.fromJson(data[i]));
        }
        return productsList;
      }
    } else {
      throw Exception('Failed to load products {$resresponse.statusCode}');
    }
  }
}
