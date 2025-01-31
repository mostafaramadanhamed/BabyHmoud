import 'package:babyhmoud/core/helper/spacing_extension.dart';
import 'package:babyhmoud/core/widgets/app_text_form_filed.dart';
import 'package:babyhmoud/features/products/ui/widgets/baby_customization.dart';
import 'package:babyhmoud/features/products/ui/widgets/read_more.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/text_styles.dart';

enum DesignChoice { personalize, upload }

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int _currentIndex = 0;
  List<String> imageUrls = [
    'https://babyhumod.com/cdn/shop/files/newborn-clothes-luxury-newborn-customized-set-baby-clothes-with-personalized-embroider-baby-name-embroidery-soft-baby-blanket-embroidered-baby-bag-elegant-welcome-set-baby-gift-design-baby-set-printing-custom-newborn-set-design-48302165393683.jpg?v=1735667470&width=493',
    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];

  String selectedSize = '0-3 Months';
  Color selectedColor = Colors.brown;
  DesignChoice? _choice = DesignChoice.personalize;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Carousel
              Stack(
                children: [
                  // row for arrow back and heart icon

                  CarouselSlider(
                    items: imageUrls.map((url) {
                      return Image.network(
                        url,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      );
                    }).toList(),
                    options: CarouselOptions(
                      aspectRatio: 16 / 14,
                      enlargeCenterPage: false,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                        print(_currentIndex);
                      },
                    ),
                  ),
                  Positioned(
                    child: Row(
                      children: [
                        IconButton(
                          icon: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: const Icon(
                              Icons.arrow_back,
                              color: AppColors.darkBrown,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        const Spacer(),
                        IconButton(
                          icon: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: const Icon(
                              Icons.favorite_border,
                              color: AppColors.darkBrown,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    imageUrls.length,
                    (index) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? AppColors.darkBrown
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              10.ph,

              // Product Info
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
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
                        const Text("4.5",
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                      ],
                    ),
                    // 10.ph,
                    Row(
                      children: [
                        const Text("Light Brown Jacket",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        const Spacer(),
                        // price
                        Text('\$83.97',
                            style: TextStyles.font17Black.copyWith(
                              color: AppColors.darkBrown,
                            )),
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
                      children: ['0-3 Months', '3-6 Months', '6-12 Months']
                          .map((size) {
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
                        text: 'Select Set Color: ',
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Divider(color: Colors.grey.shade300)),
                            Text("The Design", style: TextStyles.font17Black),
                            Expanded(
                                child: Divider(color: Colors.grey.shade300)),
                          ],
                        ),
                        10.ph,
                        RadioListTile<DesignChoice>(
                          title: Text("Personalize your Baby's Name",
                              style: TextStyles.font17Black),
                          value: DesignChoice.personalize,
                          activeColor: AppColors.darkBrown,
                          groupValue: _choice,
                          onChanged: (DesignChoice? value) {
                            setState(() {
                              _choice = value;
                            });
                          },
                        ),
                        RadioListTile<DesignChoice>(
                          title: Text(
                            "Upload your personalized design",
                            style: TextStyles.font17Black,
                          ),
                          activeColor: AppColors.darkBrown,
                          value: DesignChoice.upload,
                          groupValue: _choice,
                          onChanged: (DesignChoice? value) {
                            setState(() {
                              _choice = value;
                            });
                          },
                        ),
                        if (_choice == DesignChoice.personalize)
                          const BabyNameCustomizerScreen(),
                        if (_choice == DesignChoice.upload)
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
                      ],
                    ),
                    Divider(color: Colors.grey.shade300),
                    10.ph,
                    // list view of extra services
                    Text("Add ons", style: TextStyles.font17Black),
                    10.ph,
                    const ExtraServicesList(),
                    20.ph,
                    const Divider(color: Colors.grey),
                    20.ph,
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
                    // add ons
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const Price(),
      ),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Checkbox(
                activeColor: AppColors.darkBrown,
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              if (isChecked)
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.darkBrown),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {},
                      ),
                      const Text("1"),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
