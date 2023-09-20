import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jail_app/Features/home/presentation/main_view.dart';
import 'package:jail_app/core/binding/binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      textDirection:TextDirection.rtl,
      initialBinding:MyBinding(),
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:MainView()
    );
  }
}


