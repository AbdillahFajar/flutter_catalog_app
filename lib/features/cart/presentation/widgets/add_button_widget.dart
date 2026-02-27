import 'package:flutter/material.dart';
import '../../../cart/data/models/product_model.dart';
import 'package:provider/provider.dart';

class AddButton extends StatelessWidget {
  final String item;
  const AddButton({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    //context.select, untuk memantau apakah item ini sudah ada di keranjang
    final isInCart = context.select<CartModel, bool>((cart) => cart.items.contains(item));

    return TextButton(
      onPressed: isInCart
        ? null
        : () {
          //context.read, digunakan untuk memanggil fungsi tanpa 'mendengarkan' perubahan atau dengan kata lain, melakukan rebuild
          context.read<CartModel>().add(item);
        },
      child: isInCart ? const Icon(Icons.check, color: Colors.green) : const Text('TAMBAH'),
    );
  }
}