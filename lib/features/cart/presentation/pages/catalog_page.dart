import 'package:flutter/material.dart';
import '../../presentation/widgets/add_button_widget.dart';

class MyCatalog extends StatelessWidget {
  const MyCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    final products = ['Nasi Uduk', 'Lontong Sayur', 'Bakwan Sayur', 
    'Tempe Goreng Tepung'];
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
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
            trailing: AddButton(item: products[index])
          );
        }
      )
    );
  }
}