import 'package:earn_app/AppColor.dart';
import 'package:earn_app/view/AuthPage/ReferCodePage.dart';
import 'package:earn_app/view/AuthPage/SignUpPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1), // Start off the screen
      end: Offset.zero, // End at the position of the screen
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));
    _animationController.forward(); // Start the animation
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    TextEditingController passwordController = TextEditingController();
    TextEditingController mailController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColor.kMain, // Make sure this color is correct
      body: Stack(
        children: [
          // Your other widgets here, if any
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SlideTransition(
              position: _slideAnimation,
              child: Container(
                height: 350,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        'Welcome To Kei Rewards',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: AppColor.kSecondary),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Earn Money By Doing Tasks',
                        style:
                            TextStyle(fontSize: 16, color: AppColor.kSecondary),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          controller: mailController,
                          style: const TextStyle(color: Colors.black),
                          cursorColor: Colors.black38,
                          decoration: InputDecoration(
                            filled: true, // Enables the background color
                            fillColor: Colors
                                .grey[200], // Sets the background color to grey
                            hintText: 'Enter your mail',

                            hintStyle: TextStyle(
                                color: Colors.grey[
                                    600]), // Optional: Customize hint text color
                            prefixIcon: Icon(Icons.mail,
                                color: Colors.grey[600]), // Icon on the left
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Optional: Rounded corners
                              borderSide: BorderSide.none, // Removes the border
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Optional: Rounded corners
                              borderSide: BorderSide(
                                color: Colors.grey[300]!, // Divider color
                                width: 1.0, // Divider width
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Optional: Rounded corners
                              borderSide: BorderSide(
                                color: Colors
                                    .grey[400]!, // Divider color when focused
                                width: 1.0, // Divider width
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextField(
                          controller: passwordController,
                          style: const TextStyle(color: Colors.black),
                          cursorColor: Colors.black38,
                          decoration: InputDecoration(
                            filled: true, // Enables the background color
                            fillColor: Colors
                                .grey[200], // Sets the background color to grey
                            hintText: 'Enter Password',

                            hintStyle: TextStyle(
                                color: Colors.grey[
                                    600]), // Optional: Customize hint text color
                            prefixIcon: Icon(Icons.code,
                                color: Colors.grey[600]), // Icon on the left
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Optional: Rounded corners
                              borderSide: BorderSide.none, // Removes the border
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Optional: Rounded corners
                              borderSide: BorderSide(
                                color: Colors.grey[300]!, // Divider color
                                width: 1.0, // Divider width
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Optional: Rounded corners
                              borderSide: BorderSide(
                                color: Colors
                                    .grey[400]!, // Divider color when focused
                                width: 1.0, // Divider width
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReferCodePage()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.kMain,
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 20 - keyboardHeight,
            right: 0,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Positioned(
            top: 120 - keyboardHeight,
            left: 20,
            right: 20,
            child: Image.asset(
              "assets/onboard/onboard2.png",
              width: 300,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
