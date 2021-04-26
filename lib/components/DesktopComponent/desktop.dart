import 'package:flutter/material.dart';
import 'package:flutterportfoliotemplate/components/Description/description.dart';
import 'package:flutterportfoliotemplate/components/Profile/profile.dart';

Widget desktop() {
  return Container(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Flexible(flex: 1, child: profile()),
            Flexible(flex: 3, child: description()),
          ],
        ),
      ),
    ),
  );
}
