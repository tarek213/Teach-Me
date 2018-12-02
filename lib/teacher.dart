import 'package:flutter/material.dart';
class teacher extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new teachertData();
  }
}
class teachertData extends State<teacher> {
  @override
  Widget build(BuildContext context) {
    return _getScuffold();
  }



    Widget _getScuffold(){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
        backgroundColor: Colors.lightGreen,
        
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Options',style: new TextStyle(fontSize: 50.0),),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                debugPrint("tapped");
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Notifications'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Settings'),
            ),
            ListTile(
              title: Text('About'),
            ),
            ListTile(
              title: Text('Logout'),
            )
          ],
        ),
      ),
      body: new SingleChildScrollView(
        child: new Row(
          children: <Widget>[
            new SizedBox(
              width: 33.5,
            ),
            new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new SizedBox(height: 50.0,),
                  new Row(
                    children: <Widget>[
                     new Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: new BoxDecoration(
                    border: Border.all(width: 1.0,color: Color(0xFFD7D7D9)),
                  ),
                
                ),
                 new SizedBox(width: 30.0,),
                 new Column(
                   children: <Widget>[
                     new Text("NASHAR",style: new TextStyle(fontSize: 30.0)),
                     new Text("csed21"),
                   ],
                 ),
                 
                     
                    ],
                  ),
                new SizedBox(height: 15.0,),
                new Container(
                  width: 300.0,
                  height: 1.0,
                  decoration: new BoxDecoration(
                    border: Border.all(width: 1.0,color: Color(0xFFD7D7D9)),
                  )),
                  new SizedBox(height: 50.0,),
                  new Row(
                    children: <Widget>[
                      new Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    border: Border.all(width: 1.0,color: Color(0xFFD7D7D9)),
                  )),
                  new SizedBox(width: 20.0,),
                  //new Text("Programming",style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                  new InkWell(
                           child: new Text(
                             "Programming",
                             style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                           ),
                           onTap: () => debugPrint("recover now"),
                         )
                    ],
                  ),
                  new SizedBox(height: 50.0,),
                  new Row(
                    children: <Widget>[
                      new Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    border: Border.all(width: 1.0,color: Color(0xFFD7D7D9)),
                  )),
                  new SizedBox(width: 20.0,),
                  //new Text("Programming",style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                  new InkWell(
                           child: new Text(
                             "Electronics",
                             style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                           ),
                           onTap: () => debugPrint("recover now"),
                         )
                    ],
                  ),
                  new SizedBox(height: 50.0,),
                  new Row(
                    children: <Widget>[
                      new Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    border: Border.all(width: 1.0,color: Color(0xFFD7D7D9)),
                  )),
                  new SizedBox(width: 20.0,),
                  //new Text("Programming",style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                  new InkWell(
                           child: new Text(
                             "Digital",
                             style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),
                           ),
                           onTap: () => debugPrint("recover now"),
                         )
                    ],
                  )
                 

                ],

            )
          ],
        ),
      ) 
    );
      
      
      // your code
      
  }
  }
  