// ignore_for_file: must_be_immutable

import 'package:buythat/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class Cartitem extends StatefulWidget {
  Shoe shoe;
  Cartitem({super.key, required this.shoe});

  @override
  State<Cartitem> createState() => _CartitemState();
}

class _CartitemState extends State<Cartitem> {
  void removeitemfromcart() {
    Provider.of<Cart>(context, listen: false).removeitemfromcart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagepath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing:
            IconButton(onPressed: removeitemfromcart, icon: Icon(Icons.delete)),
      ),
    );
  }
}
