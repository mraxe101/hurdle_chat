import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hurdle_chat/Module/Auth/view/Login.dart';
import 'package:hurdle_chat/db%20cache/usercache.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Check if user is already logged in based on userID in cache
  String userID = await UserCache.getUID();

  runApp(MyApp(userID: userID));
}

class MyApp extends StatelessWidget {
  final String userID;

  const MyApp({super.key, required this.userID});

  @override
  Widget build(BuildContext context) {
    // If userID is found, navigate to the home screen, else navigate to the login screen
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: userID.isNotEmpty ? HomeScreen(userID: userID) : const Login(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String userID;

  const HomeScreen({super.key, required this.userID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(child: Text('Welcome, User $userID!')),
    );
  }
}
