import 'package:di/di_data.dart';
import 'package:di/di_domain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pam_2025/pages/MainController.dart';
import 'package:pam_2025/pages/main_page.dart';
import 'package:pam_2025/pages/user/user_page.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  injectData();
  injectDomain();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: '',),
    );
  }
}

