import 'package:flutter_october_vs/api%20integration/fakestore%20with%20category/services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var mainCategories = <String>[].obs;
  var productsByCategory = <Map<String, dynamic>>[].obs;
  var isLoadingCategories = true.obs;
  var isLoadingProducts = true.obs;

  @override
  void onInit() {
    super.onInit();
    _fetchMainCategories();
  }

  Future<void> _fetchMainCategories() async {
    try {
      isLoadingCategories(true);
      var response = await FakestoreService().getMainCategories();
      mainCategories.assignAll(response);
    } finally {
      isLoadingCategories(false);
    }
  }

  Future<void> fetchProductsByCategory(String category) async {
    try {
      isLoadingProducts(true);
      var response = await FakestoreService().getProductsByCategory(category);
      productsByCategory.assignAll(response);
    } finally {
      isLoadingProducts(false);
    }
  }
}