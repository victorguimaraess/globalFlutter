import 'package:flutter/material.dart';
import 'package:global/pages/login/login.dart';
import 'package:global/theme/theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      theme: lightTheme,
    );
  }
}
