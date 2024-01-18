import 'package:flutter/material.dart';
import 'package:gov_1/screen/mark/web.dart';
import 'package:gov_1/screen/util/App.dart';

class OttApp extends StatelessWidget {
  const OttApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTT-APP"),
      ),
      body: Container(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          children: GlobalData.Glodata2
              .map(
                (e) => InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => WebView(url: e.link),
                        )
                    );
                  },

              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(e.image),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.grey,
                        child: Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              child : Text(
                                e.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
              .toList(),
        ),

      ),
    );
  }
}
