import 'package:babyhmoud/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../cart/ui/cart_screen.dart';
import '../../wish list/ui/wish_list_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // list of pages
  List<Widget> pages = [
    const HomeScreen(),
    const WishListScreen(),
    const CartScreen(),
    
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Wish List",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
        ],
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: AppColors.darkBrown,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        
      ),
      body:pages[index] ,
    );
  }
}