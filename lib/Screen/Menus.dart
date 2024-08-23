import 'package:flutter/material.dart';

class Menus extends StatefulWidget {
  const Menus({super.key});

  @override
  State<Menus> createState() => _MenusState();
 
}

class _MenusState extends State<Menus> {
  List<String>item =<String>["item1","item2","item3","item4","item5","item6","item7","item8","item9","item10"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item.length,
      itemBuilder: (BuildContext context,int index){
        return ListTile(
          title: Text('${item[index]}'),
          onLongPress: (){
            setState(() {
              item.removeAt(index);
            });
          },
        );
      },
    );
  }
}