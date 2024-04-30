import 'package:flutter_october_vs/api%20integration/using%20http/services/httpservice.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{
  var isLoading = true.obs;
  var productList = [].obs;

  @override
  void onInit() {
    readProducts();
    super.onInit();
  }
  void readProducts() async{
    try{
      isLoading(true);
      var products = await HttpService.fetchProduct();
      // ignore: unnecessary_null_comparison
      if(products!=null){
        productList.value = products;
      }
    }catch(e){
      print(e);
    }finally{
      isLoading(false);
    }
  }
}