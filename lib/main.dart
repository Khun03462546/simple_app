
import 'package:flutter/material.dart';
import 'package:simpl_app/Screen/Menus.dart';
 
void main() {
  runApp(MaterialApp(
    title: "Simple app",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Simple App"),
      ),
      body: Menus(),
    ),
  ));
}
 
