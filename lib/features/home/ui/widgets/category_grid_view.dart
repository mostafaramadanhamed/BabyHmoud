
import 'package:babyhmoud/features/home/ui/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return const CategoryItem();
      },
    );
  }
}