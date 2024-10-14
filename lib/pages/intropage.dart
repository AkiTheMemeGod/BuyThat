import 'package:buythat/pages/homepage.dart';
import 'package:flutter/material.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Image.asset(
                "lib/images/nike.png",
                height: 200,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Just Do it.",
              style: TextStyle(
                  fontFamily: "Monospace",
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Brand New Shoes and Sneakers for every loyal customer there is",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage())),
              child: Padding(
                padding: const EdgeInsets.only(right: 25, left: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: const Text(
                      "Shop Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Monospace",
                          fontSize: 12),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
