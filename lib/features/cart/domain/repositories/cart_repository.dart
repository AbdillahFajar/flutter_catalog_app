import '../../domain/entities/product.dart';

//Buat abstract class untuk simpan semua business logic
abstract class CartRepository {
  List<Product> getCartItems();
  void addItem(Product product);
  void removeAllItems();
  bool isItemInCart(String productId);
}