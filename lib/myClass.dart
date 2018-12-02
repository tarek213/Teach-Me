import 'package:flutter/material.dart';
import 'askQuestion.dart';
import 'student.dart';

/*void main() {
  runApp(new MaterialApp(
    home: new AwesomeButton()
  ));
}*/

class myClass extends StatefulWidget {
  @override
  AwesomeButtonState createState() => new AwesomeButtonState();
}

class AwesomeButtonState extends State<myClass> {

  int counter = 0;
  List<String> strings = ["Flutter", "Is", "Awesome"];
 // String displayedString = "";

  //you can also declare variables like this
  // var counter = 0;
  // var strings = ["Flutter", "Is", "Awesome"];​
  void onPressed(){
    setState(() {
      //displayedString = strings[counter];
      counter = counter < 2 ? counter+1 : 0;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Stateful Widget!"), backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          child :new Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
            new Text("have you understood this section?",style:new TextStyle(
              fontSize: 21.0,
              
              fontWeight: FontWeight.bold,
            ),),
            new SizedBox(height: 40.0,),
             new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              new Padding(padding: new EdgeInsets.all(15.0)),
              new RaisedButton(
                child: new Text("yes", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                color: Colors.red,
                 onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => student()),
  );}
              ),
              new SizedBox(width: 20.0,),
              new RaisedButton(
                child: new Text("no", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                color: Colors.red,
                onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AskQuestionPage()),
  );
}

              )
            ]
          )
            ]
        )
        )
      )
    );
  }
}