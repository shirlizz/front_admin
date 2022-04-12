import 'package:flutter/material.dart';
import 'package:front_admin/main.dart';

class DashboardScreen extends StatelessWidget {
  static const String id = 'dashboard-screen';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Dashboard Screen',
        style: TextStyle(
          fontSize: 30,
          color: buildMaterialColor(Color(0xFFD2701D)),
        ),
      ),
    );
  }
}
