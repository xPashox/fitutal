// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_core/firebase_core.dart';
import 'package:fitutal/ui/authentication.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitUtal',
      home: Authentication(),
    );
  }
}

