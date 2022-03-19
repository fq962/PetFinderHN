import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final myController = TextEditingController();
  final myControlle2 = TextEditingController();

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
                      label: const Text(
                        'Usuario',
                        style: TextStyle(fontSize: 12),
                      ),
                      //hintText: "Usuario",
                      fillColor: Colors.transparent,
                    ),
                    controller: myController,
                    // validator:,
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
                      label: const Text(
                        'Contraseña',
                        style: TextStyle(fontSize: 12),
                      ),
                      //hintText: "Contraseña",
                      fillColor: Colors.transparent,
                    ),
                    controller: myControlle2,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 179, 114, 0.65),
                    borderRadius: BorderRadius.circular(20)),
                height: 45,
                width: 220,
                //color: Colors.blueAccent,
                child: TextButton(
                    child: const Text(
                      'Iniciar Sesion',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      debugPrint(myController.text);
                      if (myController.text == 'fernandoq' &&
                          myControlle2.text == '12345') {
                        debugPrint('inicie sesion');
                      } else {
                        final snackBar = SnackBar(
                          content: const Text(
                            'Usuario o Contraseña Incorrecta',
                            style: TextStyle(fontSize: 10),
                          ),
                          action: SnackBarAction(
                            label: 'Listo',
                            onPressed: () {},
                          ),
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Center(
                child: TextButton(
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Tipo de Cuenta',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)),
                      content: SizedBox(
                        height: 150,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(
                                        255, 179, 114, 0.65),
                                    borderRadius: BorderRadius.circular(20)),
                                height: 45,
                                width: 200,
                                //color: Colors.blueAccent,
                                child: TextButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(
                                          context, 'logup');
                                    },
                                    child: const Text('Usuario Normal',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(
                                        255, 179, 114, 0.65),
                                    borderRadius: BorderRadius.circular(20)),
                                height: 45,
                                width: 200,
                                //color: Colors.blueAccent,
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text('Organizacion',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  child: const Text(
                    '¿No tienes cuenta?. Registrate',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 9.5,
                        fontWeight: FontWeight.bold),
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
