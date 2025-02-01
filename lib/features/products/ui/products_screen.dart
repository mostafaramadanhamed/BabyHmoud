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
      body: Column(
        children: [
          // 16.ph,
          // // filter section
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //   ElevatedButton.icon(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: AppColors.darkBrown,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //     ),
          //     onPressed: () {},
          //     icon: const Icon(Icons.filter_alt),
          //     label: const Text("Filter"),
          //   ),
          //   10.pw,
          //   // sort section
          //   ElevatedButton.icon(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: AppColors.darkBrown,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //     ),
          //     onPressed: () {},
          //     icon: const Icon(Icons.sort),
          //     label: const Text("Sort"),
          //   ),
          //   10.pw,
          //   // search section
          //   ElevatedButton.icon(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: AppColors.darkBrown,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //     ),
          //     onPressed: () {},
          //     icon: const Icon(Icons.search),
          //     label: const Text("Search"),
          //   ),
          //   16.pw
          // ]),
          const Expanded(child: ProductGridView()),
        ],
      ),
    );
  }
}
