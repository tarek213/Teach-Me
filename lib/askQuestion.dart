import 'package:flutter/material.dart';
import 'check.dart';

class AskQuestionPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new AskQuestionFun();
  }
}
class AskQuestionFun extends State<AskQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return _getScuffold();
  }

    String questionTitle = "";
    String questionDetails = "";

    Widget _getScuffold(){
    return new Scaffold(
        appBar: new AppBar(title: new Text("Ask Question!"), backgroundColor: Colors.deepOrange),
        body: new Container(
          padding: new EdgeInsets.all(32.0),
          margin:  new EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
          child: new Center(
            child: new ListView(
              
              children: <Widget>[
                
                new TextField(
                  
                  decoration: new InputDecoration(
                    hintText: "Question Title"
                  ),
                  //onChanged is called whenever we add or delete something on Text Field
                  onChanged: (String str){
                    setState((){
                      questionTitle = str;
                    });
                  }
                ),
                new SizedBox(height: 30.0),
                //displaying input text
                new TextField(
                   maxLines: null,
                   keyboardType: TextInputType.multiline,
                  decoration: new InputDecoration(
                    hintText: "Question In Details.."
                  ),
                  //onChanged is called whenever we add or delete something on Text Field
                  onChanged: (String str){
                    setState((){
                      questionDetails = str;
                    });
                  }
                ),
                //displaying input text
              new Padding(padding: new EdgeInsets.all(15.0)),
              new RaisedButton(
                child: new Text("Post", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                color: Colors.red,
                onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => check()),
  );
}
                ),
                
                
                ]
                
              )
              
          )
        )
      );



      
  }
  }