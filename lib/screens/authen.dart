import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hongtour/screens/register.dart';
import 'package:hongtour/utility/my_style.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}


class _AuthenState extends State<Authen> with WidgetsBindingObserver{
// field

// Method
  Widget signiButton() {
    return RaisedButton(
      child: Text('sing ln'),
      onPressed: () {},
    );
  }

  Widget sigUpButton() {
    return FlatButton(
      child: Text('sing up'),
      onPressed: () {
        print('you Click SignUp');


        MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (BuildContext buildContext){return Register();});
        Navigator.of(context).push(materialPageRoute);
      },
    );
  }
// return RaisedButton(

  Widget showBuutton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        signiButton(),
        sigUpButton(),
      ],
    );
  }

  Widget passForm() {
    return Container(
        child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: InputDecoration(labelText: 'Passeord'),
    ));
  }

  Widget userForm() {
    return Container(
        child: TextFormField(
      decoration: InputDecoration(labelText: 'User'),
    ));
  }

  Widget showtu() {
    return Container(
      width: 120.0,
      height: 120.0,
      child: Image.asset('images/tu.png'),
    );
  }

  Widget showAppName() {
    return Text(
      'แอพนำเทื่ยว',
      style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.brown.shade700),
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.inactive:
        print('WebSocket');
        break;
      default:
    }
  }

  @override
  // Actio After RunApp 
  void initState() {
    // TODO: implement initState
    super.initState();
    print('####### initState Work #####');
    WidgetsBinding.instance.addObserver(this);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
     print('####### initState Work #####');
    WidgetsBinding.instance.addObserver(this);
  }

// Action Before pause
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/kor.jpg'),
            fit: BoxFit.cover,
          )),
          child: Center(
              child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
               color: Color.fromARGB(120, 255, 255, 255),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  showtu(),
                  showAppName(),
                  userForm(),
                  passForm(),
                  showBuutton()
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
