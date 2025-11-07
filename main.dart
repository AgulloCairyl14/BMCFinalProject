import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package: cloud_firestore/cloud_firestore.dart';
import 'package: intl.dart';
import 'firebase_options.dart';

void main() async {
  widgetsFlutterBinding.ensureIntialized();
  await Firebase.intializedApp(
    options: DefautFirebaseOptions.currentPlatform,
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do List',
      theme: ThemeData(


class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});
  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyTodoListScreen extends State<_MyTodoListScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }




    ],
  ), // Column
}


