import 'package:doctor_consultant_app/constants.dart';
import 'package:doctor_consultant_app/screens/auth/components/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/Sign_Up_bg.svg"),
          Center(
            child: SafeArea(
                child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text("Already have an account?"),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign in!",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  SignUpForm(
                    formKey: _formKey,
                  ),
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: primaryColor),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                            }
                          },
                          child: Text("Sign Up")))
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
