import 'package:flutter/material.dart';

import 'product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 6,
        mainAxisSpacing: 12,
        childAspectRatio: 0.87,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ProductItem();
      },
    );
  }
}
