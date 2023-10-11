import 'package:flutter/material.dart';
import 'package:my_first_project/patientLogin.dart'; // Import your LoginScreen
import 'package:my_first_project/homescreen.dart';

void main() {
  runApp(DentalClinicApp());
}

class DentalClinicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), // Use HomeScreen as the home screen
      routes: {
        // Define routes for other screens if needed
      },
    );
  }
}
