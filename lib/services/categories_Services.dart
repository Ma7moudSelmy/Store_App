import 'package:store_app/Models/Product_Model.dart';
import 'package:store_app/helper/api.dart';

class CategoriesServices {
  Future<List<ProductModel>> getCategoriesproduct({
    required String categorieNmae,
  }) async {
    List<dynamic> data = await Api().get(
      url: "https://fakestoreapi.com/products/category/$categorieNmae",
    );

    List<ProductModel> productsList = [];
    for (var i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}
