import 'package:flutter/material.dart';
import '../../presentation/widgets/add_button_widget.dart';
import '../../domain/entities/product.dart';
class MyCatalog extends StatelessWidget {
  const MyCatalog({super.key});

  static final List<Product> _products = [
      Product(id: '1', name: 'Nasi Uduk', price: '7000'),
      Product(id: '2', name: 'Lontong Sayur', price: '7000'),
      Product(id: '3', name: 'Bakwan Sayur', price: '1000')
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
        ]
      ),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_products[index].name),
            subtitle: Text('Rp ${_products[index].price}'),
            trailing: AddButton(item: _products[index])
          );
        }
      )
    );
  }
}