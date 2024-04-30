import 'package:flutter_october_vs/api%20integration/using%20http/model/productmodel.dart';
import 'package:http/http.dart' as http;
///read all the product from api
///where base url = https://fakestoreapi.com
///and end point is = /products
class HttpService {
  static Future<List<ProductModel>> fetchProduct() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var data = response.body;
      return productModelFromJson(data);
    } else {
      throw Exception();
    }
  }
}