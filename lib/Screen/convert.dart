import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:simpl_app/Screen/Currency.dart';

class Convert extends StatefulWidget {
  const Convert({super.key});
  @override
  State<Convert> createState() => _ConvertState();
}

class _ConvertState extends State<Convert> {

 @override
 initState(){
  super.initState();
  print("init State");
 }
  Future<Currency> getCurrency() async{
   var Url = Uri.parse("https://currency-converter-pro1.p.rapidapi.com/currencies");

   var respon = await http.get(Url,headers:{
    "x-rapidapi-host": "currency-converter-pro1.p.rapidapi.com",
    "x-rapidapi-key": "d030fa0032msha1613d4cd099d99p1906b8jsna6a62b0121bf" 
 });
  Currency result = currencyFromJson(respon.body);
  print(result.toString());
  return result;

 }
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getCurrency(),
      builder:(BuildContext context , AsyncSnapshot<Currency> snapshot){
        if(snapshot.connectionState == ConnectionState.done){
          if(snapshot.hasError){
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          }else{
            return ListView.builder(
              itemCount: snapshot.data!.result!.length,
              itemBuilder: (BuildContext context, int index) {
                String? key = snapshot.data?.result!.keys.elementAt(index);
                String? value = snapshot.data?.result![key];
                return ListTile(
                  title: Text(key!),
                  subtitle: Text(value!),
                );
              }
            );
          }
        }else{
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      }
      );
  }
}