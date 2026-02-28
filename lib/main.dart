import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'features/cart/data/models/product_model.dart';
// import 'features/cart/presentation/pages/catalog_page.dart';
// import 'features/cart/presentation/pages/cart_page.dart';
import './core/routes/app_router.dart';
import 'injection.dart'; //buildApp ada di sini
void main() {
  runApp(buildApp());
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