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
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: (){})
      ),
      body: Column(
        children: <Widget>[
          Padding(padding: const EdgeInsets.only(left:20, top: 20),
          child: _carouselBuilder(),)
      ]),
    );
  }

 _carouselBuilder(){
    return CarouselSlider(
      options: CarouselOptions(height: 400.0), 
      items: [1,2,3,4,5].map((i){
        return Builder(builder: (context){
          return Container(width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: const BoxDecoration(color: Colors.amber
          ),child: Text('text $i', style: const TextStyle(fontSize: 16.0),)
          );
        },);
    }).toList(),);
  }
}