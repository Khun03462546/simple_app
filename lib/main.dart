import 'package:flutter/material.dart';
import 'package:simpl_app/Screen/Myapp.dart';
//import 'package:simpl_app/Screen/THB.dart';
//import 'package:simpl_app/Screen/convert.dart';
 
void main() {
  runApp(MaterialApp(
    title: "Exchange Currency",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Container widget"),
      ),
      body: const Myapp(),
    ),
  ));
}
