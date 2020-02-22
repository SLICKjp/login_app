import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginState();
  }
}
class LoginState extends State<Login> {
final TextEditingController _userController=new TextEditingController();
final TextEditingController _pwdController=new TextEditingController();
String _welcomeName="";
void _erase()
{
  setState(() {
     _userController.clear();
     _pwdController.clear();
  });
}
void _showWelcome()
{
  setState(() {
    if(_userController.text.isNotEmpty && _pwdController.text.isNotEmpty)
      {
           _welcomeName=_userController.text;
      }
  });
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Login'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body:new Container(
         alignment: Alignment.topCenter,
         child: new ListView(
           children: <Widget>[
             new Image.asset(
               'images/face.png',
               height: 90,
               width: 90,
             ),
             new Container(
               height: 180.0,
               width: 500.0,
               color: Colors.white,
               child: new Column(
                 children: <Widget>[
                   new TextField(
                     controller: _userController,
                     decoration: new InputDecoration(
                       hintText: 'Username',
                       icon: new Icon(Icons.person),
                     ),
                   ),
                   new TextField(
                     controller: _pwdController,
                     decoration: new InputDecoration(
                       hintText: 'Password',
                       icon: new Icon(Icons.lock),
                     ),
                     obscureText: true,
                   ),
                   new Padding(padding: new EdgeInsets.all(10.5)),
                   new Center(
                     child: new Row(
                       children: <Widget>[
                         new Container(
                           margin: const EdgeInsets.only(left:38.0),
                           child: new RaisedButton(
                               onPressed:_showWelcome,
                               color:Colors.redAccent,
                               child: new Text('Login',
                               style: new TextStyle(
                                 fontStyle: FontStyle.normal,
                                 fontSize: 20,
                               ),
                               ),
                           ),
                         ),
                         new Container(
                           margin: const EdgeInsets.only(left: 155.0),
                           child: new RaisedButton(
                               onPressed: _erase,
                               color: Colors.redAccent,
                               child: new Text('Clear',
                               style: new TextStyle(
                                 fontSize: 20,
                               ),
                               ),
                           ),
                         )
                       ],
                     ),
                   )
                 ],
               ),

             ),
              new Padding(padding: new EdgeInsets.all(28.8)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text('WELCOME!,$_welcomeName',
                  style: new TextStyle(
                    fontSize: 20.5,
                  ),
                  )
                ],
              )

           ],
         ),

      )
    );
  }
}
