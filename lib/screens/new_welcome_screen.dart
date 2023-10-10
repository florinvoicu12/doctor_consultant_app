import 'package:doctor_consultant_app/screens/auth/sign_in_screen.dart';
import 'package:doctor_consultant_app/screens/new_sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewWelcomeScreen extends StatelessWidget {
  const NewWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/splash_bg.svg"),
          SafeArea(
            child: Column(
              children: [
                Spacer(),
                SvgPicture.asset("assets/icons/gerda_logo.svg"),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  NewSignUpScreen())),
                      child: Text("Sign Up"),
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF6CD8D1),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SignInScreen())),
                      child: Text("Sign In"),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
