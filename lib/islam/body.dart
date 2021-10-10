import 'package:flutter/material.dart';
import 'package:school_mobile_app/components/rounded_input_field.dart';
import 'package:school_mobile_app/components/rounded_password_field.dart';
import 'package:school_mobile_app/constants.dart';
import 'package:school_mobile_app/islam/background.dart';
import 'Home.dart';


class Body extends StatelessWidget {
  const Body();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            FlatButton(
              child: Text(
                "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(Home.routName);
              },
              color: kPrimaryColor,
              minWidth: size.width * 0.8,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),

            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}