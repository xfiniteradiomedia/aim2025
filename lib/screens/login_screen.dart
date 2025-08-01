import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool saveInfo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome to AIM2025',
          style: TextStyle(
            fontFamily: 'Tahoma',
            color: Color(0xFF0077CC),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            child: Column(
              children: [
                Container(
                  width: 250,
                  height: 250,
                  child: Image.asset('assets/logo.png'),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username or Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0077CC),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: () {
                          // TODO: Add spinner and login logic, then navigate to friends_list_screen
                        },
                        child: Text("Let's Go", style: TextStyle(fontFamily: 'Tahoma')),
                      ),
                    ),
                    SizedBox(width: 16),
                    Row(
                      children: [
                        Checkbox(
                          value: saveInfo,
                          onChanged: (val) {
                            setState(() {
                              saveInfo = val ?? false;
                            });
                          },
                        ),
                        Text('Save My Info', style: TextStyle(fontFamily: 'Tahoma')),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // TODO: Show register modal
                        },
                        child: Text('Sign Up', style: TextStyle(color: Color(0xFF0077CC))),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // TODO: Forgot password logic
                        },
                        child: Text('Forgot Password?', style: TextStyle(color: Colors.grey[700])),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                GestureDetector(
                  onTap: () {
                    // TODO: Navigate to privacy_terms.dart
                  },
                  child: Text(
                    'Privacy & Terms',
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      color: Color(0xFF0077CC),
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500,
                    ),
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