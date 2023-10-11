import 'package:flutter/material.dart';
import 'package:my_first_project/languageSelection.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                // Welcome message
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16.0),
                Text('Please login to access'),
                SizedBox(height: 32.0),
                // Sign-in form
                Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                            borderSide: BorderSide(color: Color(0xFFFBFBFB)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                            borderSide: BorderSide(color: Color(0xFFBDFF00)),
                          ),
                        ),
                        style: TextStyle(fontSize: 16.0),
                        validator: (value) {
                          // Email validator logic
                        },
                      ),
                      SizedBox(height: 24.0),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          suffixIcon: IconButton(
                            icon: Icon(Icons.visibility),
                            onPressed: () {
                              // Toggle password visibility
                            },
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                            borderSide: BorderSide(color: Color(0xFFFBFBFB)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                            borderSide: BorderSide(color: Color(0xFFBDFF00)),
                          ),
                        ),
                        style: TextStyle(fontSize: 16.0),
                        validator: (value) {
                          // Password validator logic
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0),
                // Forgot Password button
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        // Forgot password logic
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Color(0xFF3D80DE),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                // Log In button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LanguageSelection(),
                        )); // Log in logic
                  },
                  child: Text('Log In'),
                ),
                SizedBox(height: 16.0),
                // Sign-up text with clickable "Sign up" part
                RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign up",
                        style: TextStyle(
                          color: Color(0xFF3D80DE),
                        ),
                        // Add onTap logic for navigation to the registration screen
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
