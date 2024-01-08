import 'package:flutter/material.dart';
import 'package:gov_1/screen/mark/web.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmark'),
        centerTitle: true,
      ),
      body: ListView(
        children: Provider.of<ServiceData>(context).bookmarks.map((e) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WebView(url: e.url),
                ),
              );
            },
            child: Card(
              elevation: 8,
              margin: const EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.center,
                height: 45,
                width: double.infinity,
                child: Text(
                  e.title,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
