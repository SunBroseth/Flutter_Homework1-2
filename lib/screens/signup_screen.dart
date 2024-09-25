import 'package:flutter/material.dart';
import 'login_user.dart';  // Import your LoginScreen

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPassword = true;
  final txt = FocusNode();
  final _formKey = GlobalKey<FormState>();

  void togglePassword() {
    setState(() {
      isPassword = !isPassword;
      if (txt.hasPrimaryFocus) return;
      txt.canRequestFocus = false;
    });
  }

  TextEditingController controllerFullName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Image.asset(
                    'assets/images/person_icon.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                // Form with validation logic
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Full Name Field with Validation
                      TextFormField(
                        controller: controllerFullName,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Full Name',
                          prefixIcon: const Icon(
                            Icons.person,
                            size: 32,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Required Full Name!';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      // Email Address Field with Validation
                      TextFormField(
                        controller: controllerEmail,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Email Address',
                          prefixIcon: const Icon(
                            Icons.email,
                            size: 32,
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Required Email Address!';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      // Password Field with Validation
                      TextFormField(
                        controller: controllerPassword,
                        obscureText: isPassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: 'Password',
                          prefixIcon: const Icon(
                            Icons.lock_outline,
                            size: 32,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                            child: GestureDetector(
                              onTap: togglePassword,
                              child: Icon(
                                isPassword
                                    ? Icons.visibility_rounded
                                    : Icons.visibility_off_rounded,
                                size: 32,
                              ),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade200,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Required Password!';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      String strName = controllerFullName.text;
                      String strEmail = controllerEmail.text;
                      String strPwd = controllerPassword.text;

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              "Full Name: $strName \nEmail: $strEmail \nPassword: $strPwd"),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'CREATE ACCOUNT',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    // Navigate to LoginScreen when button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginUser()),
                    );
                  },
                  child: const Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                // const SizedBox(height: 24),
                //
                // Row(
                //   children: <Widget>[
                //     const Expanded(
                //       child: Divider(
                //         thickness: 1,
                //         color: Colors.grey,
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.symmetric(horizontal: 16),
                //       child: const Text('OR'),
                //     ),
                //     const Expanded(
                //       child: Divider(
                //         thickness: 1,
                //         color: Colors.grey,
                //       ),
                //     ),
                //   ],
                // ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  icon: Image.asset(
                    'assets/images/google.png',
                    width: 24,
                    height: 24,
                  ),
                  label: const Text(
                    'Connect with Google',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    // Google login action
                  },
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  icon: Image.asset(
                    'assets/images/facebook.png',
                    width: 24,
                    height: 24,
                  ),
                  label: const Text(
                    'Connect with Facebook',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    // Facebook login action
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
