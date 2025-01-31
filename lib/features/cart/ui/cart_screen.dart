import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/widgets/app_text_button.dart';
import 'package:babyhmoud/core/widgets/app_text_form_filed.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildCartItem(
                  context,
                  imageUrl:
                      "https://babyhumod.com/cdn/shop/files/newborn-clothes-luxury-newborn-customized-set-baby-clothes-with-personalized-embroider-baby-name-embroidery-soft-baby-blanket-embroidered-baby-bag-elegant-welcome-set-baby-gift-design-baby-set-printing-custom-newborn-set-design-48302165393683.jpg?v=1735667470&width=493",
                  title: "Brown Jacket",
                  size: "XL",
                  price: 83.97,
                ),  _buildCartItem(
                  context,
                  imageUrl:
                      "https://babyhumod.com/cdn/shop/files/newborn-clothes-luxury-newborn-customized-set-baby-clothes-with-personalized-embroider-baby-name-embroidery-soft-baby-blanket-embroidered-baby-bag-elegant-welcome-set-baby-gift-design-baby-set-printing-custom-newborn-set-design-48302165393683.jpg?v=1735667470&width=493",
                  title: "Brown Jacket",
                  size: "XL",
                  price: 83.97,
                ),  _buildCartItem(
                  context,
                  imageUrl:
                      "https://babyhumod.com/cdn/shop/files/newborn-clothes-luxury-newborn-customized-set-baby-clothes-with-personalized-embroider-baby-name-embroidery-soft-baby-blanket-embroidered-baby-bag-elegant-welcome-set-baby-gift-design-baby-set-printing-custom-newborn-set-design-48302165393683.jpg?v=1735667470&width=493",
                  title: "Brown Jacket",
                  size: "XL",
                  price: 83.97,
                ),  _buildCartItem(
                  context,
                  imageUrl:
                      "https://babyhumod.com/cdn/shop/files/newborn-clothes-luxury-newborn-customized-set-baby-clothes-with-personalized-embroider-baby-name-embroidery-soft-baby-blanket-embroidered-baby-bag-elegant-welcome-set-baby-gift-design-baby-set-printing-custom-newborn-set-design-48302165393683.jpg?v=1735667470&width=493",
                  title: "Brown Jacket",
                  size: "XL",
                  price: 83.97,
                ),  _buildCartItem(
                  context,
                  imageUrl:
                      "https://babyhumod.com/cdn/shop/files/newborn-clothes-luxury-newborn-customized-set-baby-clothes-with-personalized-embroider-baby-name-embroidery-soft-baby-blanket-embroidered-baby-bag-elegant-welcome-set-baby-gift-design-baby-set-printing-custom-newborn-set-design-48302165393683.jpg?v=1735667470&width=493",
                  title: "Brown Jacket",
                  size: "XL",
                  price: 83.97,
                ),  _buildCartItem(
                  context,
                  imageUrl:
                      "https://babyhumod.com/cdn/shop/files/newborn-clothes-luxury-newborn-customized-set-baby-clothes-with-personalized-embroider-baby-name-embroidery-soft-baby-blanket-embroidered-baby-bag-elegant-welcome-set-baby-gift-design-baby-set-printing-custom-newborn-set-design-48302165393683.jpg?v=1735667470&width=493",
                  title: "Brown Jacket",
                  size: "XL",
                  price: 83.97,
                ),  _buildCartItem(
                  context,
                  imageUrl:
                      "https://babyhumod.com/cdn/shop/files/newborn-clothes-luxury-newborn-customized-set-baby-clothes-with-personalized-embroider-baby-name-embroidery-soft-baby-blanket-embroidered-baby-bag-elegant-welcome-set-baby-gift-design-baby-set-printing-custom-newborn-set-design-48302165393683.jpg?v=1735667470&width=493",
                  title: "Brown Jacket",
                  size: "XL",
                  price: 83.97,
                ),  _buildCartItem(
                  context,
                  imageUrl:
                      "https://babyhumod.com/cdn/shop/files/newborn-clothes-luxury-newborn-customized-set-baby-clothes-with-personalized-embroider-baby-name-embroidery-soft-baby-blanket-embroidered-baby-bag-elegant-welcome-set-baby-gift-design-baby-set-printing-custom-newborn-set-design-48302165393683.jpg?v=1735667470&width=493",
                  title: "Brown Jacket",
                  size: "XL",
                  price: 83.97,
                ),  _buildCartItem(
                  context,
                  imageUrl:
                      "https://babyhumod.com/cdn/shop/files/newborn-clothes-luxury-newborn-customized-set-baby-clothes-with-personalized-embroider-baby-name-embroidery-soft-baby-blanket-embroidered-baby-bag-elegant-welcome-set-baby-gift-design-baby-set-printing-custom-newborn-set-design-48302165393683.jpg?v=1735667470&width=493",
                  title: "Brown Jacket",
                  size: "XL",
                  price: 83.97,
                ),
                _buildCartItem(
                  context,
                  imageUrl:
                      "https://babyhumod.com/cdn/shop/files/newborn-clothes-luxury-newborn-customized-set-baby-clothes-with-personalized-embroider-baby-name-embroidery-soft-baby-blanket-embroidered-baby-bag-elegant-welcome-set-baby-gift-design-baby-set-printing-custom-newborn-set-design-48302165393683.jpg?v=1735667470&width=493",
                  title: "Brown Suite",
                  size: "XL",
                  price: 120.00,
                ),
              ],
            ),
          ),
          _buildCartSummary(),
        ],
      ),
    );
  }

  Widget _buildCartItem(
    BuildContext context, {
    required String imageUrl,
    required String title,
    required String size,
    required double price,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Dismissible(
        key: UniqueKey(),
        child: ListTile(
          tileColor: Colors.white,
          leading:
              Image.network(imageUrl, width: 50, height: 50, fit: BoxFit.cover),
          title: Text(title),
          subtitle: Text("Size: $size\n\$${price.toStringAsFixed(2)}"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(icon: const Icon(Icons.remove), onPressed: () {}),
              const Text("1"),
              IconButton(icon: const Icon(Icons.add), onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCartSummary() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Promo Code',
            suffixIcon: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.darkBrown,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text("Apply"),
            ),
          ),
          10.ph,
          _buildPriceRow("Sub-Total", 407.94),
          _buildPriceRow("Delivery Fee", 25.00),
          _buildPriceRow("Discount", -35.00),
          const Divider(),
          _buildPriceRow("Total Cost", 397.94, isBold: true),
          10.ph,
          AppTextButton(buttonText: "Proced to Checkout", onPressed: () {}),
        ],
      ),
    );
  }

  Widget _buildPriceRow(String label, double amount, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
          Text("\$${amount.toStringAsFixed(2)}",
              style: TextStyle(
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}
