import 'package:flutter/material.dart';
import 'package:my_first_project/screen10.dart';

class PatientIssue extends StatefulWidget {
  @override
  _PatientIssueState createState() => _PatientIssueState();
}

class _PatientIssueState extends State<PatientIssue> {
  int _selectedIssue = -1; // Initialize to no selected issue

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // "What issue is the Patient facing?" text
              Text(
                'What issue is the Patient facing?',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 32.0),
              // Checkboxes for patient issues
              buildCheckbox(0, 'Routine Checkup'),
              SizedBox(height: 16.0),
              buildCheckbox(1, 'Tooth Ache'),
              SizedBox(height: 16.0),
              buildCheckbox(2, 'Cavity'),
              SizedBox(height: 16.0),
              buildCheckbox(3, 'Cleaning / Scaling'),
              SizedBox(height: 16.0),
              buildCheckbox(4, 'Tooth Replacement'),
              SizedBox(height: 16.0),
              buildCheckbox(5, 'Other'),
              SizedBox(height: 16.0),
              // Proceed button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmAppointment(),
                      )); // Proceed button logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFBDFF00), // Button background color
                  foregroundColor: Color(0xFF000000), // Text color
                ),
                child: Text('Proceed'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCheckbox(int index, String text) {
    return Row(
      children: <Widget>[
        Radio(
          value: index,
          groupValue: _selectedIssue,
          onChanged: (newValue) {
            //setState(() {
            // _selectedIssue = newValue;
            //});
          },
        ),
        Text(text),
      ],
    );
  }
}
