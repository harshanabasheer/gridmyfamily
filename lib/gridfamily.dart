import 'package:flutter/material.dart';
import 'package:gridmyfamily/model/gridmodel.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  List items =[
    GridFamilyModel(text1: "Calender", text2: "March,Wednesday", text3: "3 Events", ico: Icon(Icons.calendar_month)),
    GridFamilyModel(text1: "Groceries", text2: "Bocali,apple", text3: "4 Ttems", ico: Icon(Icons.local_grocery_store)),
    GridFamilyModel(text1: "Locations", text2: "Lucy mao going to office", text3: "", ico: Icon(Icons.location_on)),
    GridFamilyModel(text1: "Activity", text2: "Rose favirated your post", text3: "", ico: Icon(Icons.celebration)),
    GridFamilyModel(text1: "To Do", text2: "Homework,Designs", text3: "4 items", ico: Icon(Icons.speaker_notes)),
    GridFamilyModel(text1: "Settings", text2: "", text3: "2 items", ico: Icon(Icons.settings)),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView"),
          backgroundColor: Colors.brown,
        ),
        backgroundColor: Colors.black45,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Row(
                  children: [
                    Text("My Family\nHome", style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold), ),
                    SizedBox(width: 300,),
                    Stack(
                      children: [
                      Icon(Icons.message, color: Colors.white, size: 40.0,),
                          Positioned(
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 10,// Set the background color of the avatar
                              child:
                              Text("1", style: TextStyle(color: Colors.white,fontSize:10,), ),
                            ),
                          ),
                    ],
                    )
                  ],
                ),
              ),

              Container(
                            padding: EdgeInsets.all(12.0),
                            child: GridView.builder(
                              itemCount: items.length,
                              shrinkWrap: true,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12.0,
                                mainAxisSpacing: 12.0,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.blueGrey,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      items[index].ico,
                                      SizedBox(height: 8.0),
                                      Text(items[index].text1, style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold), ),
                                      SizedBox(height: 8.0),
                                      Text(items[index].text2, style: TextStyle(color: Colors.white,fontSize:10,fontWeight: FontWeight.bold), ),
                                      SizedBox(height: 8.0),
                                      Text(items[index].text3, style: TextStyle(color: Colors.white,fontSize:10,fontWeight: FontWeight.bold), ),
                                    ],
                                  ),
                                );
                              },
                            )

                        ),
            ],
          ),
        ),

    );

  }
}
