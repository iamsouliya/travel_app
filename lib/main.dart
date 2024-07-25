import 'package:flutter/material.dart';
import 'package:travel_app/screens/splash.dart';

void main() {
  runApp(const RootPage());
}

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WonderLens',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF01446B),
          primary: const Color(0xFF01446B), // Set primary color
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
