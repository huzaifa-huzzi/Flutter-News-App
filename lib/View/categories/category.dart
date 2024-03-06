import 'package:flutter/material.dart';


class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<Map<String, dynamic>> items = [
    {"name": "Politics", "image": "assets/images/imran pic.jpeg"},
    {"name": "Crypto", "image": "assets/images/crypto.jpg"},
    {"name": "Technology", "image": "assets/images/technology.jpg"},
    {"name": "Music", "image": "assets/images/music.jpg"},
    {"name": "Gaming", "image": "assets/images/Gaming.jpg"},
    {"name": "Anime", "image": "assets/images/Anime.jpg"},
    {"name": "patients", "image": "assets/images/patients.jpeg"},
    {"name": "Education", "image": "assets/images/education.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Lorem Ipsum es simplemente el texto de relleno.',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 30,),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: (items.length / 2).ceil(),
                  itemBuilder: (BuildContext context, int index) {
                    final int firstIndex = index * 2;
                    final int secondIndex = index * 2 + 1;
                
                    return Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              _buildItem(items[firstIndex]),
                              if (secondIndex < items.length) const SizedBox(height: 10),
                              if (secondIndex < items.length) _buildItem(items[secondIndex]),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
  }

  Widget _buildItem(Map<String, dynamic> item) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item["name"],
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Image.asset(
            item["image"],
            width: double.infinity,
            height: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}







