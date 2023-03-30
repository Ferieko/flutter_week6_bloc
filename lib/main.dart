import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_week6_bloc/feature/contact/ui/contact_main.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter demo',
     theme: ThemeData(
       primarySwatch: Colors.grey,

     ),
     home: const ContactMain(),
   );
  }
}