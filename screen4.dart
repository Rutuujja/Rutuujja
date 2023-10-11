import 'package:flutter/material.dart';
import 'package:my_first_project/screen7.dart';

class PersonDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Instruction text
              Text(
                'You can book an appointment for a maximum of 2 persons.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 32.0),
              // Person 1 details
              Row(
                children: <Widget>[
                  Text('Person 1:'),
                  SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PatientIssue(),
                          )); // Add details for Person 1 logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color(0xFFBDFF00), // Button background color
                      foregroundColor: Color(0xFF000000), // Text color
                    ),
                    child: Text('Add details'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              // Person 2 details
              Row(
                children: <Widget>[
                  Text('Person 2:'),
                  SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add details for Person 2 logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color(0xFFBDFF00), // Button background color
                      foregroundColor: Color(0xFF000000), // Text color
                    ),
                    child: Text('Add details'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
