//import 'dart:nativewrappers/_internal/vm/lib/isolate_patch.dart';

import 'package:buythat/components/bottom_navbar.dart';
import 'package:buythat/pages/cartpage.dart';
import 'package:buythat/pages/shoppage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedpage = 0;
  void navigatebottombar(int index) {
    setState(() {
      _selectedpage = index;
    });
  }

  final List<Widget> _pages = [const Shoppage(), const Cartpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigatebottombar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu))),
      ),
      drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                      child: Image.asset(
                    "lib/images/nike.png",
                    color: Colors.white,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: const ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text("H O M E"),
                      textColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: const ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text("A B O U T"),
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 25),
                child: const ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text("L O G O U T"),
                  textColor: Colors.white,
                ),
              )
            ],
          )),
      body: _pages[_selectedpage],
    );
  }
}
