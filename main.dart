import 'package:flutter/material.dart';


import 'package:ecommerce_app/screens/auth_wrapper.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  options: DefaultsFirebaseOptions.currentPlatforms,
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My E-Commerce App"),
        ),
        body: Center(
          child: Text("Firebase is Connected!"),
        ),
      ),
    );
  }
}
