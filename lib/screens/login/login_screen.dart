import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 179, 114, 0.65),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 30),
              child: Center(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/paw.png'),
                ),
              ),
            ),
            const Center(
              child: Text(
                'PetFinderHN',
                style: TextStyle(fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                  width: 300,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: Colors.black54),
                      hintText: "Usuario",
                      fillColor: Colors.transparent,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                  width: 300,
                  height: 50,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: Colors.black54),
                      hintText: "Contraseña",
                      fillColor: Colors.transparent,
                    ),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Center(
                child: Text(
                  '¿No tienes cuenta?. Registrate',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
