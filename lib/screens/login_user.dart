import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:first_app/app_color.dart';
import 'package:first_app/screens/homescreens.dart';
import 'package:first_app/screens/signup_screen.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  bool ispassword = true;
  final txt = FocusNode();
  void togglePassword() {
    setState(() {
      ispassword = !ispassword;
      if (txt.hasPrimaryFocus) return;
      txt.canRequestFocus = false;
    });
  }

  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _keyForm,
            child: ListView(
              children: <Widget>[
                const SizedBox(height: 60),
                Center(
                  child: Image.asset(
                    'assets/images/person_icon.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Required Username!';
                    }
                    return null;
                  },
                  controller: controllerUsername,
                  decoration: InputDecoration(
                    hintText: 'Phone number, email or username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: const Icon(
                      Icons.person,
                      size: 32,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Required Password!';
                    }
                    return null;
                  },
                  controller: controllerPassword,
                  obscureText: ispassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      size: 32,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: togglePassword,
                      child: Icon(
                        ispassword
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        size: 32,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    if (_keyForm.currentState!.validate()) {
                      String strName = controllerUsername.text;
                      String strPwd = controllerPassword.text;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text("UserName: $strName \nPassword: $strPwd"),
                        ),
                      );
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                        (route) => false,
                      );
                    }
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          text: 'Forgot your login details? ',  // Normal text
                          style: const TextStyle(color: Colors.black),  // Default color
                          children: [
                            TextSpan(
                              text: 'Get help',  // Text with blue color
                              style: const TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                // Add your onPressed action here
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                const SizedBox(height: 16),
                const Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child:  Text('OR'),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
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
                  ),
                  icon: Image.asset(
                    'assets/images/google.png',
                    width: 24,
                    height: 24,
                  ),
                  label: const Text(
                    'Login with Google',
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
                  ),
                  icon: Image.asset(
                    'assets/images/facebook.png',
                    width: 24,
                    height: 24,
                  ),
                  label: const Text(
                    'Login with Facebook',
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    // Facebook login action
                  },
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Doesn't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Create new account',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
