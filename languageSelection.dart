import 'package:flutter/material.dart';
import 'package:my_first_project/screen4.dart';

class LanguageSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // "Select Language" text
              Text(
                'Select Language',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 32.0),
              // Buttons for language selection
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PersonDetails(),
                      )); // English language selection logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFBDFF00), // Button background color
                  foregroundColor: Color(0xFF000000), // Text color
                ),
                child: Text('English'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Hindi language selection logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFBDFF00), // Button background color
                  foregroundColor: Color(0xFF000000), // Text color
                ),
                child: Text('Hindi'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Marathi language selection logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFBDFF00), // Button background color
                  foregroundColor: Color(0xFF000000), // Text color
                ),
                child: Text('Marathi'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
