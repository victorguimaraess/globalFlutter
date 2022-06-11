import 'package:flutter/material.dart';

class PagePattern extends StatelessWidget {
  final String title;
  final Widget body;

  PagePattern({
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 40,
              right: 40,
              top: 40,
            ),
            child: body,
          ),
        ));
  }
}
