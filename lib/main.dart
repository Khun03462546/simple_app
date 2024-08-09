
import 'package:flutter/material.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
Widget showimage(){
  return Container(width: 50.0,height: 50.0,
    child:Image.asset('images/cat.png'),
    );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            showimage(),
            Center(
              child: Text(
                "Resume",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "First Name: Tanagon",
                  ),
                  Text(
                    "Last Name: Khumnuan",
                  ),
                  Text(
                    "Hobby: sleepy",
                  ),
                ],
              ),
            ),
            Text(
              "Education:",
               style: TextStyle( fontWeight: FontWeight.bold),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Primary : Nanoi School"),
                  Text("Secondary : Nanoi School"),
                  Text("UnderGrad: Narasuan University")
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:[
                Text("GPA:x.xx"),
                Text("GPA:y.yy"),
                Text("GPA:z.zz"),
              ],)
            ],
            
            ),
          ],
        ),
      ),
    );
  }
}
