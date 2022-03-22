import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('PetFinder'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 179, 114, 1),
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {})),
      backgroundColor: Color.fromRGBO(255, 179, 114, 1),
      body: Column(children: <Widget>[
        Container(
          width: 200,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Selecciona a tu mascota',
                style: TextStyle(fontSize: 28),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: _carouselBuilder(),
        ),
        Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 3
                    )
                  ],
                    color: const Color.fromRGBO(255, 228, 178, 1),
                    borderRadius: BorderRadius.circular(20)),
                height: 45,
                width: 220,
                child: TextButton(
                    child: const Text(
                      'ADOPTAR',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {}),
              ),
            ),
        Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 3
                    )
                  ],
                    color: const Color.fromRGBO(255, 228, 178, 1),
                    borderRadius: BorderRadius.circular(20)),
                height: 45,
                width: 220,
                child: TextButton(
                    child: const Text(
                      'CONSULTAR',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {}),
              ),
            )
      ]),
    );
  }

  _carouselBuilder() {
    return CarouselSlider(
      options: CarouselOptions(height: 350.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 228, 178, 1)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage('assets/images/puppie.png'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                        width: 250,
                        height: 180,
                      ),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 20, left: 20, bottom: 10),
                          child: Text('Julio',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Edad: 9 meses',
                              style: TextStyle(fontSize: 22)),
                        ),
                      ],
                    ),
                  ],
                ));
          },
        );
      }).toList(),
    );
  }
}
