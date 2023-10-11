import 'package:flutter/material.dart';

class ConfirmAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // "Confirm Appointment" text
              Text(
                'Confirm Appointment',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 32.0),
              // Date, Day, and Time information
              Text('Date : 13/09/2023'),
              SizedBox(height: 16.0),
              Text('Day : Wednesday'),
              SizedBox(height: 16.0),
              Text('Time : 08:00 PM'),
              SizedBox(height: 16.0),
              // Confirm button
              ElevatedButton(
                onPressed: () {
                  // Confirm button logic
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color(0xFFBDFF00)), // Button background color
                  foregroundColor: MaterialStateProperty.all(
                      Color(0xFF000000)), // Text color
                ),
                child: Text('Confirm'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
