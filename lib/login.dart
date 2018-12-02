import 'package:flutter/material.dart';
import 'login2.dart';
import 'student.dart';
import 'teacher.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}
class LoginState extends State<LoginPage> {
  String name = "";

  void _increasemoney(String str)
  {
    setState(() {
          name = str ;
        });
  }
  @override
  Widget build(BuildContext context) {
    return _getScuffold();
  }



    Widget _getScuffold(){
      String name = "";
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Row(
          children: <Widget>[
            new SizedBox(
              width: 33.5,
            ),
            new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new SizedBox( height: 150.5,),
                  new projectName(),
                  new SizedBox(height: 130.5,),
                  new UserData(),
                  new SizedBox(height: 33.5,),
                  new LoginButton()

                ],

            )
          ],
        ),
      ) ,
    );
      // your code
      
  }
  }
  class projectName extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new SizedBox(
          width: 25.5,
        ),
     new Text(
                  "Project Name",
                  style: new TextStyle(
                    color: Color(0xFF989899),
                    fontSize: 40.0,
                  ),
                )
      ],
    );
    
  }

}
class LoginButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
                  width: 294.0,
                  height: 46.0,
                  child: new RaisedButton(
                    child: new Text("login" , style: new TextStyle(fontSize: 22.0, color: Color(0xFFF9F9FA)),),
                    color: Color(0xFF2699FB),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => student()),
                        );
                      }


                  ),
                );
  }
  

}


