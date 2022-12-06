import 'package:flutter/material.dart';
import 'package:task_center/pages/card_component.dart';
import 'package:task_center/widgets/drawer.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Center",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ) ,
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
      ),


      // backgroundColor: Color(0xFFFBFBFD),
      body: ListView(
        children: <Widget>[

             Container(
                      margin: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Text("Leave Requests",
                        style: TextStyle(
                            fontSize:20,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                      ) 
                    ),
                    Container(
                        margin: const EdgeInsets.all(10.0),
                        height: 175.0,
                        decoration: BoxDecoration(
                          border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: ListView(
                          children: const <Widget>[
                              CardComponent(),
                              CardComponent(),
                              CardComponent(),
                              CardComponent()
                          ],
                    )),
                    SizedBox(height: 5,),
                    Divider(
                      height: 20,
                      thickness: 1,
                      indent: 40,
                      endIndent: 40,
                      color: Colors.grey[400],
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Text("Time sheet Requests",
                        style: TextStyle(
                            fontSize:20,
                            fontWeight: FontWeight.bold,
                            // fontFamily: FontFamily('Popppins')
                        )
                      ),
                      ) 
                    ),

                    Container(
                        margin: const EdgeInsets.all(10.0),
                        height: 175.0,
                        decoration: BoxDecoration(
                          border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: ListView(
                          children: const <Widget>[
                              CardComponent(),
                              CardComponent(),
                              CardComponent(),
                              CardComponent()
                          ],
                    )),
                    SizedBox(height: 5,),
                    Divider(
                      height: 20,
                      thickness: 1,
                      indent: 40,
                      endIndent: 40,
                      color: Colors.grey[400],
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: const Text("Work Order Requests",
                        style: TextStyle(
                            fontSize:20,
                            fontWeight: FontWeight.bold,
                        )
                      ), 
                      )
                    ),
                    Container(
                        margin: const EdgeInsets.all(10.0),
                        height: 175.0,
                        decoration: BoxDecoration(
                          border: Border.all(width: 3),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: ListView(
                          children: const <Widget>[
                              CardComponent(),
                              CardComponent(),
                              CardComponent(),
                              CardComponent()
                          ],
                    )),
                    SizedBox(height: 5,),
                    Divider(
                      height: 20,
                      thickness: 1,
                      indent: 40,
                      endIndent: 40,
                      color: Colors.grey[400],
                    ),
        ]
      ),
      drawer: MyDrawer() ,

      // CustomScrollView(slivers:<Widget>[
      //   SliverList(
      //     delegate: SliverChildListDelegate(<Widget>[
              
      //     ])
      //   )
      // ])
    );
  }
}
