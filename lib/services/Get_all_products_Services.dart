import 'package:store_app/Models/Product_Model.dart';
import 'package:store_app/helper/api.dart';

class AllProductsServices {
  Future<List> getAllProducts() async {
    List<dynamic> data = await Api().get(
      url: "https://fakestoreapi.com/products",
    );

    {
      List<ProductModel> productsList = [];
      for (var i = 0; i < data.length; i++) {
        productsList.add(ProductModel.fromJson(data[i]));
      }
      return productsList;
    }
  }
}
