import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          gap: 8,
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(16),
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Shop",
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: "Cart",
            )
          ]),
    );
  }
}
