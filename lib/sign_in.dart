import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/a3.jpg'), fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  child: ListView(
                    children: <Widget>[
                      Text(
                        'Welcome to Fashionista!',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        'Sign in to continue',
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                        decoration: InputDecoration(
                            labelText: 'EMAIL',
                            prefixIcon: Icon(
                              Icons.email,
                              size: 22,
                            ),
                            labelStyle: TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                        decoration: InputDecoration(
                            labelText: 'PASSWORD',
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 22,
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  hidePassword = !hidePassword;
                                });
                              },
                              child: Icon(
                                hidePassword == true
                                    ? FontAwesomeIcons.solidEye
                                    : FontAwesomeIcons.solidEyeSlash,
                                size: 18,
                              ),
                            ),
                            labelStyle: TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                        obscureText: hidePassword,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                        text: 'Login',
                        bgColor: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87,width: 1),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        child: CustomButton(
                          text: 'Sign Up',
                          bgColor: Colors.white.withOpacity(0),
                          textColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.bgColor,
    this.text,
    this.textColor
  });

  final Color bgColor;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Material(
            color: bgColor,
            borderRadius: BorderRadius.circular(7),
            child: InkWell(
              borderRadius: BorderRadius.circular(7),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  '$text',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: textColor,
                      fontSize: 15),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
