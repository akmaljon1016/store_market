import 'package:flutter/material.dart';

import 'cardview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final List<String> items = [
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy",
    "tumanniy"
  ];

  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  var myText = TextEditingController();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "qidirish",
                    suffixIcon: IconButton(
                        onPressed: widget.myText.clear,
                        icon: Icon(Icons.clear))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: MediaQuery.of(context).size.width + 100,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.black),
                                color: Colors.blue),
                            child: const Center(
                                child: Text(
                              "Id",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.black),
                                color: Colors.blue),
                            child: const Center(
                                child: Text(
                              "Name",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.black),
                                color: Colors.blue),
                            child: const Center(
                                child: Text(
                              "Price",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.black),
                                color: Colors.blue),
                            child: const Center(
                                child: Text(
                              "Count",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height-188,
                      child: ListView.builder(
                          itemCount: widget.items.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CardView(widget.items[index]);
                          }),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
