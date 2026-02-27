import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/cart/data/models/product_model.dart';
// import 'features/cart/presentation/pages/catalog_page.dart';
// import 'features/cart/presentation/pages/cart_page.dart';
import './core/routes/app_router.dart';
void main() {
  runApp(
    //Membungkus aplikasi dengan ChangeNotifierProvider agar State bisa diakses di mana saja
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nasi Uduk Nenek Ezra',
      routes: AppRouter.routes,
    );
  }
}