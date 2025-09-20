import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/Models/Product_Model.dart';

class CategoriesServices {
  Future<List<ProductModel>> getCategoriesproduct({
    required String categorieNmae,
  }) async {
    http.Response resresponse = await http.get(
      Uri.parse("https://fakestoreapi.com/products/category/$categorieNmae "),
    );
    if (resresponse.statusCode == 200) {
      List<dynamic> data = jsonDecode(resresponse.body);
      List<ProductModel> productsList = [];
      for (var i = 0; i < data.length; i++) {
        productsList.add(ProductModel.fromJson(data[i]));
      }
      return productsList;
    } else {
      throw Exception(
        'Failed to load products for category {$resresponse.statusCode}',
      );
    }
  }
}
