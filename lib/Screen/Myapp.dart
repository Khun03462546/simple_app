import 'package:flutter/material.dart';
import 'package:simpl_app/Screen/moneybox.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), 
      child: Column(
      children: [
        Moneybox("ยอดเงินคงเหลือ", 10000, Colors.blue),
        const SizedBox(height: 8.0),
        Moneybox("รายรับ", 15000, Colors.green),
        const SizedBox(height: 8.0),
        Moneybox("รายจ่าย",5000, Colors.red),
        const SizedBox(height: 8.0),
        Moneybox("ค้างชำระ", 1200, Colors.orange),
        const SizedBox(height: 8.0)
      ]
      )
    );
  }
}