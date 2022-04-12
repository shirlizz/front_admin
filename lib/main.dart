import 'package:flutter/material.dart';
import 'package:front_admin/screens/dashboard_screen.dart';
import 'package:front_admin/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Marketing',
      theme: ThemeData(
        primarySwatch: buildMaterialColor(Color(0xFF3C4590)),
      ),
      initialRoute: HomeScreen.id,
      routes: {
        DashboardScreen.id: (context) => DashboardScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text(
              'Welcome to My App',
              style: TextStyle(
                  fontSize: 30, color: buildMaterialColor(Color(0xFFD2701D))),
            ),
          ),
        ),
      ),
    );
  }
}
