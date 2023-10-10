import 'package:doctor_consultant_app/constants.dart';
import 'package:doctor_consultant_app/screens/auth/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewSignUpScreen extends StatelessWidget {
  const NewSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        SvgPicture.asset("assets/icons/Sign_Up_bg.svg"),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                left: defaultPadding, right: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: defaultPadding * 3,
                ),
                Text(
                  "Create account",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SignInScreen())),
                        child: Text(
                          "Sign In!",
                          style: TextStyle(fontSize: 16),
                        ))
                  ],
                ),
                NewSignUpForm(),
                SizedBox(
                  height: defaultPadding * 2,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Sign up"),
                      style:
                          TextButton.styleFrom(backgroundColor: primaryColor),
                    ))
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class NewSignUpForm extends StatelessWidget {
  const NewSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Username"),
        SizedBox(
          height: defaultPadding / 2,
        ),
        TextFormField(),
        SizedBox(
          height: defaultPadding,
        ),
        Text("Email"),
        SizedBox(
          height: defaultPadding / 2,
        ),
        TextFormField(),
        SizedBox(
          height: defaultPadding,
        ),
        Text("Phone"),
        SizedBox(
          height: defaultPadding / 2,
        ),
        TextFormField(),
        SizedBox(
          height: defaultPadding,
        ),
        Text("Password"),
        SizedBox(
          height: defaultPadding / 2,
        ),
        TextFormField(),
        SizedBox(
          height: defaultPadding,
        ),
        Text("Confirm password"),
        SizedBox(
          height: defaultPadding / 2,
        ),
        TextFormField()
      ]),
    );
  }
}
