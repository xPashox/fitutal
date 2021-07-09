import 'package:fitutal/net/flutterfire.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

class Authentication extends StatefulWidget {
  Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.grey[200]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                controller: _emailField,
                decoration: InputDecoration(
                    hintText: "ejemplo@email.com",
                    hintStyle: TextStyle(
                        color: Colors.lightBlue[300],
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                    labelText: "Correo Electrónico",
                    labelStyle: TextStyle(
                        color: Colors.lightBlue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    focusColor: Colors.lightBlue[300]),
              ),
              TextFormField(
                controller: _passwordField,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "contraseña",
                    hintStyle: TextStyle(
                        color: Colors.lightBlue[300],
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                    labelText: "Contraseña",
                    labelStyle: TextStyle(
                        color: Colors.lightBlue[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    focusColor: Colors.lightBlue[300],
                    hoverColor: Colors.lightBlue[300]),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 56,
                padding: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.lightBlue[700]),
                child: MaterialButton(
                  onPressed: () async {
                    bool shouldNavigate =
                        await signIn(_emailField.text, _passwordField.text);
                    if (shouldNavigate) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeView(),
                        ),
                      );
                    }
                  },
                  child: Text('Ingresar',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 56,
                padding: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.lightBlue[700]),
                child: MaterialButton(
                  onPressed: () async {
                    bool shouldNavigate =
                        await register(_emailField.text, _passwordField.text);
                    if (shouldNavigate) {
                      // Navigate
                    }
                  },
                  child: Text('Registrarse',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              )
            ],
          )),
    );
  }
}
