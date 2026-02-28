import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import '../../../cart/data/models/product_model.dart';
import '../../presentation/providers/cart_provider.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    //context.watch, untuk membuat widget ini re-build tiap kali CartModel berubah
    var cart = context.watch<CartProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang Kamu'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) =>
                ListTile(
                  leading: const Icon(Icons.fastfood),
                  title: Text(cart.items[index].name),
                  subtitle: Text('Rp ${cart.items[index].price}'),
              ),
            )
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () => cart.removeAll(),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text(
                'Batalkan Semua Pesanan',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ),
        ]
      )
    );
  }
}