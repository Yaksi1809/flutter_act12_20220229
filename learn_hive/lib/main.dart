import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:learn_hive/screens/home.dart';


Future<void> main() async{
  await Hive.initFlutter();

  await Hive.openBox('favorites');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const HomePage(),
    );
  }
}

