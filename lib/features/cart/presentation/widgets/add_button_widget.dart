import 'package:flutter/material.dart';
// import '../../../cart/data/models/product_model.dart';
import 'package:provider/provider.dart';
import '../../presentation/providers/cart_provider.dart';
import '../../domain/entities/product.dart';

class AddButton extends StatelessWidget {
  final Product product;
  const AddButton({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    //context.select, untuk memantau apakah item ini sudah ada di keranjang
    final isInCart = context.select<CartProvider, bool>(
      (provider) => provider.isInCart(product.id),
    );

    return TextButton(
      onPressed: isInCart
        ? null
        : () {
          //context.read, digunakan untuk memanggil fungsi tanpa 'mendengarkan' perubahan atau dengan kata lain, melakukan rebuild
          context.read<CartProvider>().addItem(product);
        },
      child: isInCart ? const Icon(Icons.check, color: Colors.green) : const Text('TAMBAH'),
    );
  }
}