//Buat class yang tipenya implements untuk pakai semua fungsi yang udah dibuat di CartRepository bertipe abstract class
//yang file-nya udah dibuat di lib/features/cart/domain/repositories/cart_repository.dart
//Di bagian ini, isinya bisa diganti dengan API call, database, dll
import '../../domain/repositories/cart_repository.dart';
import '../../domain/entities/product.dart';
class CartRepositoryImpl implements CartRepository {
  final List<Product> _items = [];

  @override
  List<Product> getCartItems() => List.unmodifiable(_items);

  @override
  void addItem(Product product) => _items.add(product);
  
  @override
  void removeAllItems() => _items.clear();
   
  @override
  bool isItemInCart(String productId) => 
   _items.any ((p) => p.id == productId);
}