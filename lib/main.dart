import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/controller/bottom_provider.dart';
import 'package:movie_app/controller/home_provider.dart';
import 'package:movie_app/controller/search_provider.dart';
import 'package:movie_app/view/spalsh_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomBarProvider()),
        ChangeNotifierProvider(create: (context) => SearchProvider()),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ],
      child: MaterialApp(
        title: 'Netflix',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white, fontSize: 24),
              bodyMedium: TextStyle(color: Colors.white, fontSize: 20),
            ),
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.purple, background: Colors.black),
            fontFamily: GoogleFonts.ptSans().fontFamily,
            useMaterial3: true),
        home: const SplascScreen(),
      ),
    );
  }
}
