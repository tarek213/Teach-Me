import 'package:flutter/material.dart';


class UserData extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
                  width: 294.0,
                  height: 94.0,
                  decoration: new BoxDecoration(
                    border: Border.all(width: 1.0,color: Color(0xFFD7D7D9)),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      new Container(
                        height: 46.0,
                        decoration: new BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1.0,color: Color(0xFFD7D7D9))),
                        
                        ),
                          child: new TextField(
                          style: TextStyle(fontSize: 22.0,color: Color(0xFF989899)),
                          decoration: InputDecoration(
                            hintText: "username",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 15.0,top: 10.0),
                            hintStyle: TextStyle(color: Color(0xFFD7D7D9),fontSize: 22.0),
                          ),
                        ),
                      ),
                      

                      new Container(
                        margin: EdgeInsets.only(top: 0.0),
                        height: 46.0,
                          child: new TextField(
                          style: TextStyle(fontSize: 22.0 ,color: Color(0xFF989899)),
                          decoration: InputDecoration(
                            hintText: "password",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 15.0,top: 10.0),
                            hintStyle: TextStyle(color: Color(0xFFD7D7D9),fontSize: 22.0),
                          ),
                          obscureText: true,
                        ),
                      ),
                    ],
                  ),
                );
  }

}