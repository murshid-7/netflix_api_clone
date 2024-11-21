import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/widgets/bottombar.dart';

class SplascScreen extends StatefulWidget {
  const SplascScreen({super.key});

  @override
  State<SplascScreen> createState() => _SplascScreenState();
}

class _SplascScreenState extends State<SplascScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomNavigation()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset("assets/netflix.json"),
    );
  }
}
