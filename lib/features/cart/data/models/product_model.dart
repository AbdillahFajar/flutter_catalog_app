import 'package:flutter/material.dart';

//1. STATE MODEL (BUSINESS LOGIC)
class CartModel extends ChangeNotifier {
  final List<String> _items = [];

  List<String> get items => _items;

  //Fungsi untuk tambah item ke keranjang belanja
  void add (String itemName) {
    _items.add(itemName);
    notifyListeners(); //update UI dengan ini. Harus dipanggil setiap kali membuat fungsi baru yang bisa merubah UI
  }

  //Fungsi untuk hapus semua item yang dipilih di keranjang belanja 
  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}