import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategoriesServices {
  Future<List> getAllCategories() async {
    http.Response resresponse = await http.get(
      Uri.parse("https://fakestoreapi.com/products/categories"),
    );
    if (resresponse.statusCode == 200) {
      List<dynamic> data = jsonDecode(resresponse.body);
      return data;
    } else {
      throw Exception('Failed to load categories {$resresponse.statusCode}');
    }
  }
}
