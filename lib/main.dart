import 'package:flutter/material.dart';

void main() {
  //entry point of the application - when we lunch the application this is the first method which is being called
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'product box demoo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        // title: const Text('Productbox demo project'),
      ),
      body: ListView(
        shrinkWrap: false,
        padding: const EdgeInsets.all(8.0),
        children: const <Widget>[
          ProductBox(
            name: 'iphone',
            description: 'iphone is best vbfg fdfgd efgfdsfdg',
            price: 1000000,
            image: "nature.png",
          ),
          ProductBox(
              name: 'motorola',
              description: 'nice',
              price: 400000,
              image: "natural.png"),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(2),
        height: 120,
        child: Card(
          color: Colors.amber,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                //this is also correct
                // Image.asset("images/"+image),

                //use here interpolation... interpolation to compose strings and values.
                // Image(image: AssetImage('images/$image')),
                Image.asset("images/$image"),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(description),
                        Text("price:$price"),
                        // price sathi as hi use kru shakto
                        // Text("price:"+this.price.toString()),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
