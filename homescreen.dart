import 'package:flutter/material.dart';
import 'package:my_first_project/patientLogin.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                // Logo
                Image.asset(
                  'images/SmileArt Logo.JPG',
                  width: 200.0,
                  height: 200.0,
                ),
                SizedBox(height: 16.0),
                // "Who's login?" text
                Text(
                  "Who's login?",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 32.0),
                // Buttons for different user types
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        )); // Patient login logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFBDFF00), // Button color
                    foregroundColor: Color(0xFF000000), // Text color
                  ),
                  child: Text('Patient login'),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Doctor login logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFBDFF00), // Button color
                    foregroundColor: Color(0xFF000000), // Text color
                  ),
                  child: Text('Doctor login'),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Assistant login logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFBDFF00), // Button color
                    foregroundColor: Color(0xFF000000), // Text color
                  ),
                  child: Text('Assistant login'),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Admin login logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFBDFF00), // Button color
                    foregroundColor: Color(0xFF000000), // Text color
                  ),
                  child: Text('Admin login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
