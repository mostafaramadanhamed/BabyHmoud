import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Product Details"),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children:  [
              // product image
               ClipRRect(
                borderRadius: BorderRadius.circular(15.0.r),
                child: Image.asset('assets/images/test.jpg',height: 300.h,width: double.infinity,fit: BoxFit.cover,)),
              // product name
              
              // product price
              // product description
              // product rating
              // product reviews
              // product quantity
              // product add to cart button
            ],
          ),
        ),
      )
    );
  }
}
