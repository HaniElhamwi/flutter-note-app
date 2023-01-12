import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset("images/logo.jpg")),
        Container(
          padding: EdgeInsets.all(10),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "user name",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                      ))),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      hintText: "email",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                      ))),
              SizedBox(height: 20),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      hintText: "password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                      ))),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(children: [
                  Text("If you  have an account click here"),
                  InkWell(
                    child: Text(
                      "Click Here",
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "login");
                    },
                  )
                ]),
              ),
              Container(
                child: RaisedButton(
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Text(
                    "Account SignUp",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              )
            ],
          )),
        )
      ],
    ));
  }
}
