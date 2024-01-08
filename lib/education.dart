import 'package:flutter/material.dart';
import 'package:gov_1/screen/mark/web.dart';
import 'package:gov_1/screen/util/App.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text("Education"),
      ),
      body: Container(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 7/8,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          children: GlobalData.Glodata
              .map(
                (e) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebView(url: e.link),
                        ),
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
                              flex: 2,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                child: Image.asset(e.image),

                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  width: double.infinity,
                                  child: Text(
                                    e.name,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),

                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );

                },
          ).toList(),
        ),

      ),
    );
  }
}
