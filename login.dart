import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(alignment: Alignment.center, children: <Widget>[
      CustomPaint(
        size: size,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 45, bottom: 5),
            child: Text("plog-in",
                style: TextStyle(fontSize: 25, color: Colors.lightGreen)),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
            ),
            child: Text("Login",
                style: TextStyle(fontSize: 80, color: Colors.lightGreen)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, bottom: 70),
            child: Text("―――",
                style: TextStyle(fontSize: 80, color: Colors.lightGreen)),
          ),
          Stack(
            children: <Widget>[
              _inputForm(size),
              _authButton(size),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40, bottom: 60),
                child: Text("sign up now!"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 160, bottom: 60),
                child: Text("Forgot Password?"),
              ),
            ],
          ),
        ],
      )
    ]));
  }

  Widget _authButton(Size size) => Positioned(
        left: size.width * 0.15,
        right: size.width * 0.15,
        bottom: 90,
        child: SizedBox(
          height: 50,
          child: RaisedButton(
              child: Text("Login Now",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              color: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print(_emailController.text.toString());
                }
              }),
        ),
      );

  Widget _inputForm(Size size) {
    return Padding(
        padding: EdgeInsets.only(left: 50, right: 50, bottom: 200),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle),
                  labelText: "Email",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please input correct email";
                  }
                  return null;
                },
              ),
              TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                  icon: Icon(Icons.vpn_key),
                  labelText: "Password",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please input correct password";
                  }
                  return null;
                },
              ),
            ],
          ),
        ));
  }
}