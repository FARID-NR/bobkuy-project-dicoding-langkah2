import 'package:e_pop_ice/widget.dart';
import 'package:flutter/material.dart';

import 'MenuNavbar.dart';
import 'data.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boba KUY',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Produk> allData = getAllData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: MenuNavbar(),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.yellowAccent,
        title: const Text(
          'Boba KUY',
          style: TextStyle(color: Color(0xFF212121)),
        ),
        actions: <Widget>[
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.search),
                color: const Color(0xFF212121),
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(allData),
                  );
                },
              ),
              Stack(
                children: [
                  IconButton(
                    onPressed: (() {}),
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Color(0xFF212121),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 3,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            childAspectRatio: 0.7, // Ubah nilai childAspectRatio sesuai kebutuhan
          ),
          itemBuilder: (context, index) {
            return ItemWidget(produk: allData[index]);
          },
          itemCount: allData.length,
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Pisang',
    'Durian',
    'Jagung',
    'Paket1',
    'Paket2',
    'Paket3',
  ];

  List<Produk> allData;

  CustomSearchDelegate(this.allData);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.mic),
        onPressed: () {},
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        query = '';
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Produk> matchQuery = [];
    for (var produk in allData) {
      if (produk.nama.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(produk);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return Container(
          child: ListTile(
            title: Text(result.nama),
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Produk> matchQuery = [];
    for (var produk in allData) {
      if (produk.nama.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(produk);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result.nama),
        );
      },
    );
  }
}
