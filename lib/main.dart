import 'dart:ui';

import 'package:datad/assets/data.dart';
import 'package:datad/screens/home.dart';
import 'package:datad/widgets/roundedClipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'widgets/bottomNavigationBar.dart';
import 'widgets/dataDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E67F9),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}


