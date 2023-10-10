import 'package:doctor_consultant_app/constants.dart';
import 'package:doctor_consultant_app/screens/auth/components/sign_up_form.dart';
import 'package:doctor_consultant_app/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignInScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/Sign_Up_bg.svg"),
          SafeArea(
              child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: defaultPadding * 3.5,
                ),
                Text(
                  "Sign In",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()),
                            ),
                        child: Text(
                          "Sign up!",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                SizedBox(
                  height: defaultPadding * 3,
                ),
                Form(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      TextFieldName(
                        text: "Email",
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(),
                        validator:
                            EmailValidator(errorText: "Use a valid email!"),
                      ),
                      SizedBox(
                        height: defaultPadding * 2,
                      ),
                      TextFieldName(
                        text: "Password",
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(),
                        validator: passwordValidator,
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      TextFieldName(
                        text: "Forgot your Password?",
                      ),
                    ])),
                SizedBox(
                  height: defaultPadding * 2,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style:
                            TextButton.styleFrom(backgroundColor: primaryColor),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                          }
                        },
                        child: Text("Sign In")))
              ],
            ),
          )),
        ],
      ),
    );
  }
}
