import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Statemanagement/using%20multi%20provider/screen/counter_using_consumer.dart';
import 'package:provider/provider.dart';

class WishListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WishList ❤️'),
      ),
      body:
          Consumer(builder: (context, ProductProvider productProvider, child) {
        return ListView.builder(
            itemCount: productProvider.wishListProduct.length,
            itemBuilder: (context, index) {
              var selectedProduct = productProvider.wishListProduct[index];
              return ListTile(
                title: Text(productProvider.wishListProduct[index].name),
                subtitle: Text(
                    'Price: \$${productProvider.wishListProduct[index].price}'),
                leading: CachedNetworkImage(
                  imageUrl: productProvider.product[index].imageUrl,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  width: 50,
                  // Set the width as needed
                  height: 50,
                  // Set the height as needed
                  fit: BoxFit.cover,
                ),
                trailing: IconButton(
                    onPressed: () {
                      if (!productProvider.wishListProduct
                          .contains(selectedProduct)) {
                        productProvider.addToWishList(selectedProduct);
                      } else {
                        productProvider.removeFromWishList(selectedProduct);
                      }
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: productProvider.wishListProduct
                              .contains(selectedProduct)
                          ? Colors.red
                          : Colors.grey,
                    )),
              );
            });
      }),
    );
  }
}