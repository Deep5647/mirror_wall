import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Mirror Wall",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushNamed('SearchEngin');
            },
            icon: const Icon(Icons.search_sharp),
          ),
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed('Bookmark');
          }, icon: const Icon(Icons.bookmark_border))
        ],

      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed('Education');
                },
                child: Row(
                  children: [
                    Expanded(child: Image.asset("assets/img/th.jpeg"), ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),

                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                          child: Center(child: Text("EDUCATION",style: TextStyle(color: Colors.black,fontSize: 30),)),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed('OttApp');
                },
                child: Row(
                  children: [
                    Expanded(child: Image.asset("assets/img/ott.jpeg") ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                          child: Center(child: Text("OTT",style: TextStyle(color: Colors.black,fontSize: 30),)),
                        ),
                
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


