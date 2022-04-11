import 'package:flutter/material.dart';
import 'package:front_admin/screens/dashboard_screen.dart';
import 'package:front_admin/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
