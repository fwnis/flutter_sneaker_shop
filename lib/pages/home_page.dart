import "package:flutter/material.dart";

import "../components/bottom_nav_bar.dart";
import "cart_page.dart";
import "shop_page.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => {Scaffold.of(context).openDrawer()},
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // logo
                Column(
                  children: [
                    DrawerHeader(
                      child: Image.asset(
                        "lib/images/nike.png",
                        color: Colors.white,
                        width: 180,
                      ),
                    ),

                    Divider(
                      color: Colors.grey[800],
                    ),

                    //other pages
                    const ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    const ListTile(
                      leading: Icon(
                        Icons.shopping_bag,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Cart",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    const ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        "About",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),

                const ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ]),
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
