import 'package:flutter/material.dart';
import 'package:store_market/model/tovar.dart';
import 'package:store_market/network/network.dart';

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
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  var myText = TextEditingController();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<Tovar> items;
  final scrollController = ScrollController();
  int page = 1;
  bool isLoadingMore = false;
   List zapchastlar =[];

  @override
  void initState() {
    super.initState();
    items = Network().getItems(page);
    zapchastlar=Network().tovarlar;
    scrollController.addListener(_scrollListener);
    print(zapchastlar);
  }

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
                          flex: 2,
                          child: Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.black),
                                color: Colors.blue),
                            child: const Center(
                                child: Text(
                              "Nomi",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.black),
                                color: Colors.blue),
                            child: const Center(
                                child: Text(
                              "Olish Narxi",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.black),
                                color: Colors.blue),
                            child: const Center(
                                child: Text(
                              "Foiz",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.black),
                                color: Colors.blue),
                            child: const Center(
                                child: Text(
                              "Sotish Narxi ",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height - 188,
                        child: ListView.builder(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            controller: scrollController,
                            itemCount: isLoadingMore
                                ? zapchastlar.length + 1
                                : zapchastlar.length,
                            itemBuilder: (BuildContext context, int index) {
                              return CardView(zapchastlar[index]);
                            }))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _scrollListener() async {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      page = page + 1;
      setState(() {
        isLoadingMore = true;
      });
      await Network().getItems(page);
      isLoadingMore = false;
    }
  }
}
