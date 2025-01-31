import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/widgets/app_text_form_filed.dart';
import 'package:babyhmoud/features/products/ui/widgets/baby_customization.dart';
import 'package:babyhmoud/features/products/ui/widgets/read_more.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/text_styles.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int _currentIndex = 0;
  List<String> imageUrls = [
    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];

  String selectedSize = '0-3 Months';
  Color selectedColor = Colors.brown;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Product Details'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Carousel
            CarouselSlider(
              items: imageUrls.map((url) {
                return Image.network(url,
                    fit: BoxFit.cover, width: double.infinity);
              }).toList(),
              options: CarouselOptions(
                enlargeCenterPage: false,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            10.ph,

            // Product Info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Female’s Style",
                      style: TextStyle(color: Colors.grey)),
                  10.ph,
                  Row(
                    children: [
                      const Text("Light Brown Jacket",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      const Spacer(),
                      RatingBarIndicator(
                        rating: 4.5,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 1,
                        itemSize: 20,
                      ),
                      const SizedBox(width: 10),
                      const Text("4.5", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  10.ph,
                  const ReadMoreText(
                    text:
                        'This is a long text that will be truncated when it reaches the maxLines.  You can adjust the maxLines to show more or less text  You can adjust the maxLines to show more or less text You can adjust th to show more or less text. You can adjust the maxLines to show more or less text',
                    maxLines: 3,
                  ),
                  10.ph,
                  Divider(color: Colors.grey.shade300),
                  10.ph,

                  // Size Selection
                  Text("Select Size", style: TextStyles.font17Black),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        ['0-3 Months', '3-6 Months', '6-12 Months'].map((size) {
                      return ChoiceChip(
                        label: Text(size),
                        selectedColor: AppColors.lighterBrown,
                        backgroundColor: AppColors.darkBrown,
                        labelStyle: selectedSize == size
                            ? TextStyles.font14SemiBold
                            : TextStyles.font12Regular.copyWith(
                                color: Colors.white,
                              ),
                        selected: selectedSize == size,
                        onSelected: (bool selected) {
                          setState(() {
                            selectedSize = size;
                          });
                        },
                      );
                    }).toList(),
                  ),
                  10.ph,

                  // Color Selection
                  RichText(
                    text: TextSpan(
                      text: 'Select Color: ',
                      style: TextStyles.font17Black,
                      children: [
                        TextSpan(
                          text: 'Color',
                          style: TextStyles.font15DarkBrown,
                        ),
                      ],
                    ),
                  ),
                  5.ph,
                  Row(
                    children: [
                      Colors.pink,
                      Colors.amber,
                      Colors.blue,
                      Colors.red
                    ].map((color) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedColor = color;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                            border: selectedColor == color
                                ? Border.all(width: 3, color: Colors.black)
                                : null,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  20.ph,
                  const BabyNameCustomizerScreen(),
                  20.ph,
                  Row(
                    children: [
                      Text(
                        "Upload your personalized design",
                        style: TextStyles.font17Black,
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(
                          Icons.add_photo_alternate_outlined,
                          color: AppColors.darkBrown,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Divider(color: Colors.grey.shade300),
                  20.ph,
                  // massege on gift card
                  Text(
                    "Message on Gift card",
                    style: TextStyles.font17Black,
                  ),
                  8.ph,
                  const AppTextFormField(
                    hintText: 'Write your message here...',
                    maxLines: 4,
                  ),
                  10.ph,
                  Divider(color: Colors.grey.shade300),
                  20.ph,
                  // list view of extra services
                  Text("Add ons", style: TextStyles.font17Black),
                  10.ph,
                  const ExtraServicesList(),
                  20.ph,
                  const Divider(color: Colors.grey),
                  20.ph,
                  // add ons
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const Price(),
    );
  }
}

class ExtraServicesList extends StatelessWidget {
  const ExtraServicesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ProductTile();
      },
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}

class Price extends StatelessWidget {
  const Price({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 2),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Total Price\n \$83.97",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.darkBrown,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            icon: const Icon(Icons.add_shopping_cart),
            label: const Text("Add to Cart"),
          ),
        ],
      ),
    );
  }
}

class ProductTile extends StatefulWidget {
  const ProductTile({super.key});

  @override
  _ProductTileState createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Row(
        children: [
          Image.asset('assets/images/test.jpg', width: 100, height: 100),
          12.pw,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Product Name',
              ),
              8.ph,
              const Text(
                'Price',
              ),
            ],
          ),
          const Spacer(),
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
