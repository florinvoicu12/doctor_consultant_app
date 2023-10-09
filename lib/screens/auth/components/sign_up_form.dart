import 'package:doctor_consultant_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    super.key,
    required this.formKey,
  });

  final GlobalKey formKey;

  late String _userName, _email, _password, _phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldName(
              text: "Username",
            ),
            TextFormField(
              decoration: InputDecoration(),
              validator: RequiredValidator(errorText: "Username is required"),
              onSaved: (username) => _userName = username!,
            ),
            SizedBox(height: defaultPadding),
            TextFieldName(
              text: "Email",
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(),
              validator: EmailValidator(errorText: "Use a valid email!"),
              onSaved: (email) => _email = email!,
            ),
            SizedBox(height: defaultPadding),
            TextFieldName(
              text: "Phone",
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(),
              validator:
                  RequiredValidator(errorText: "Phone number is required"),
              onSaved: (phoneNumber) => _phoneNumber = phoneNumber!,
            ),
            SizedBox(height: defaultPadding),
            TextFieldName(
              text: "Password",
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(),
              validator: passwordValidator,
              onSaved: (password) => _password = password!,
              onChanged: (pass) => _password = pass,
            ),
            SizedBox(height: defaultPadding),
            TextFieldName(
              text: "Confirm password",
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(),
              validator: (pass) =>
                  MatchValidator(errorText: "Passwords do not match")
                      .validateMatch(pass!, _password),
            )
          ],
        ));
  }
}

class TextFieldName extends StatelessWidget {
  const TextFieldName({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 3),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54),
      ),
    );
  }
}
