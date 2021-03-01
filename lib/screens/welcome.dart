import 'package:easyPay/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Welcome extends StatelessWidget {
  static final routeName = "/welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("easyPay"),
        leading: Center(
          child: FaIcon(
            FontAwesomeIcons.commentsDollar,
            color: Colors.lightGreenAccent,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color.fromRGBO(40, 12, 51, 1.0),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text("Entrar"),
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text("Criar uma conta"),
                onPressed: () => Navigator.pushNamed(context, Signup.routeName),
              )
            ],
          ),
        ),
      ),
    );
  }
}
