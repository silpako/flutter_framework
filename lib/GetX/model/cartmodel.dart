class CartModel{
  String name;
  String price;
  String color;
  int count;
  String image;
  CartModel(this.name,this.price,this.color,this.count,this.image);
}
List<CartModel> productList= [
  CartModel("Item1", "100", "red", 0, "assets/images/apple.jpeg"),
  CartModel("Item2", "200", "blue", 0, "assets/images/banana.jpeg"),
  CartModel("Item4", "300", "pink", 0, "assets/images/grapes.jpeg"),
  CartModel("Item5", "200", "brown", 0, "assets/images/kiwi.jpeg"),
  CartModel("Item6", "400", "yellow", 0, "assets/images/mango.jpeg"),
  CartModel("Item7", "100", "violet", 0, "assets/images/orange.jpeg"),
];