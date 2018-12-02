import 'package:flutter/material.dart';
import 'askQuestion.dart';

class check extends StatefulWidget{
@override
  State<StatefulWidget> createState() {
    return new view();
  }
}
  class view extends State<check> {
  @override
  Widget build(BuildContext context) {
    return _getScuffold();
  }

  Widget _getScuffold(){
    String result = "";
    String result1 = "";
    return new Scaffold(
       appBar: new AppBar(title: new Text("Asked Questions"), backgroundColor: Colors.deepOrange),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child:  new ListView(
          //new Column(
           // mainAxisAlignment: MainAxisAlignment.center,
           
 // reverse: true,
            children: <Widget>[
              new Text("How can i calculate the factorial recursevly",style: new TextStyle(
                fontSize:18.0,
                fontWeight: FontWeight.bold,
                
              ),),
              new TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: new InputDecoration(
                    hintText: "Enter Your Answer Here"
                  ),
                  //onChanged is called whenever we add or delete something on Text Field
                  onChanged: (String str){
                    setState((){
                      result = str;
                    });
                  }
                ),
                new Padding(padding: new EdgeInsets.all(15.0)),
              new RaisedButton(
                child: new Text("Post Your Answer", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                color: Colors.blue),
                new SizedBox(height: 40.0,),
                 new Text("can any one explain section two in chapter four",style: new TextStyle(
                fontSize:15.0,
                
              ),),
              new TextField(
                maxLines:null ,
                keyboardType: TextInputType.multiline,
                decoration: new InputDecoration(
                    hintText: "Enter Your Answer Here"
                  ),
                  //onChanged is called whenever we add or delete something on Text Field
                  onChanged: (String str){
                    setState((){
                      result1 = str;
                    });
                  }
                ),
new Padding(padding: new EdgeInsets.all(15.0)),
              new RaisedButton(
                child: new Text("Post Your Answer", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                color: Colors.blue),

                //displaying input text

                new SizedBox(height: 50.0,),
                
                  new RaisedButton(
                child: new Text("ASK", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0)),
                onPressed: () {
                             Navigator.push(
                                      context,
                              MaterialPageRoute(builder: (context) => AskQuestionPage()),
                                 );
                                },
                color: Colors.blue)

              
              
            ],
            //),
          ),
        ),
      ),
    );
    
      // your code
      
  }

}