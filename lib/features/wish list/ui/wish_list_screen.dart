import 'package:babyhmoud/features/products/ui/widgets/product_grid_view.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Wish List"),
      ),
      body: ProductGridView(),
    );
  }
}
