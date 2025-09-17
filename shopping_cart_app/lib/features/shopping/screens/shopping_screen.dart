import 'package:flutter/material.dart';
import 'package:shopping_cart_app/features/shopping/widgets/products_grid_view.dart';
import 'package:shopping_cart_app/features/shopping/widgets/hot_offers.dart';
import 'package:shopping_cart_app/features/shopping/widgets/products_page_view.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6a78e0),
        title: Text(
          'Our Products',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(children: [ProductsPageView(), ProductsGridView() , HotOffers()]),
      ),
    );
  }
}
