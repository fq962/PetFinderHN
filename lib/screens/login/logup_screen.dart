import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class LogUpScreen extends StatefulWidget {
  const LogUpScreen({Key? key}) : super(key: key);

  @override
  State<LogUpScreen> createState() => _LogUpScreenState();
}

class _LogUpScreenState extends State<LogUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 179, 114, 0.65),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 30, left: 40),
                  child: Center(
                    child: SizedBox(
                      height: 80,
                      width: 80,
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                  width: 300,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.person),
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
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                  width: 300,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: Colors.black54),
                      label: const Text(
                        'Correo',
                        style: TextStyle(fontSize: 12),
                      ),
                      //hintText: "Usuario",
                      fillColor: Colors.transparent,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                width: 300,
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    icon: const Icon(Icons.date_range),
                    border: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(color: Colors.black54),
                    label: DateTimePicker(
                      style: const TextStyle(fontSize: 11),
                      //enabled: false,
                      //fieldLabelText: 'Fecha',
                      initialValue: '',
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2022),
                      //dateLabelText: 'Date',
                      //onChanged: (val) => print(val),
                      validator: (val) {
                        //print(val);
                        return null;
                      },
                      // ignore: avoid_print
                      onSaved: (val) => print(val),
                    ),
                    //hintText: "Usuario",
                    fillColor: Colors.transparent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: SizedBox(
                  width: 300,
                  height: 45,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: const TextStyle(color: Colors.black54),
                      label: const Text(
                        'Contraseña',
                        style: TextStyle(fontSize: 12),
                      ),
                      //hintText: "Usuario",
                      fillColor: Colors.transparent,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 179, 114, 0.65),
                    borderRadius: BorderRadius.circular(20)),
                height: 45,
                width: 220,
                //color: Colors.blueAccent,
                child: TextButton(
                    onPressed: () => {},
                    child: const Text('Registrarse',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.popAndPushNamed(context, 'login');
                  },
                  child: const Text(
                    '¿Ya tienes cuenta?. Inicia Sesion',
                    style: TextStyle(fontSize: 9.5, fontWeight: FontWeight.bold),
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
