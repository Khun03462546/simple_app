import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print("Text Button Pressed");
              },
              child: Text(
                "Text",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 20,
                ),
              ),
            ),
            FilledButton(
                style: FilledButton.styleFrom(
                    backgroundColor: Colors.amber.shade100,
                    foregroundColor: Colors.brown),
                onPressed: () {
                  print("Eilled Botton Pressed");
                },
                child: Text(
                  "Filled",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.red,
                  elevation: 5),
                  
                onPressed: (){
                  print("ElevatedButton Pressd");
                }, child: Text("Elevated")),
              OutlinedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.red,
                ),
                onPressed: (){
                  print("OutlineButton Pressed");
                }, child: Text("Outline")),
          ],
        ),
      ),
    );
  }
}
