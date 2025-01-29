
import 'package:flutter/material.dart';

import 'widgets/product_grid_view.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Printing Sets"),
      ),
      body: const ProductGridView(),
    );
  }
}
