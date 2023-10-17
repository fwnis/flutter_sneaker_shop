import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Container(
                margin: const EdgeInsets.only(bottom: 48),
                padding: const EdgeInsets.all(24.0),
                child: Image.asset(
                  'lib/images/nike.png',
                  height: 200,
                  width: 240,
                ),
              ),

              // title
              Container(
                margin: const EdgeInsets.only(bottom: 24),
                child: const Text(
                  "Just Do It",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),

              // subtitle
              Container(
                margin: const EdgeInsets.only(bottom: 48),
                child: const Text(
                  "Brand new sneakers and premium kicks made with premium quality",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),

              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(24),
                  child: const Center(
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                ),
              )

              // start now
            ],
          ),
        ),
      ),
    );
  }
}
