import 'package:flutter/material.dart';

class CPUListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CPU List',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('CPU List'),
        ),
        body: new Center(),
      ),
    );
  }
}

class LoginData {
  String username = '';
  String password = '';
}

class LoginPage extends StatelessWidget {
  LoginData _loginData = new LoginData();

  @override
  Widget build(BuildContext context) {
    final usernameField = new TextFormField(
      autofocus: false,
      onSaved: (String value) {
        this._loginData.username = value;
      },
      decoration: new InputDecoration(
        labelText: 'Username',
      ),
    );

    final passwordField = new TextFormField(
      autofocus: false,
      obscureText: true,
      onSaved: (String value) {
        this._loginData.password = value;
      },
      decoration: new InputDecoration(
        labelText: 'Password',
      ),
    );

    final submitButton = new RaisedButton(
      padding: EdgeInsets.all(8.0),
      child: Text('Login'),
      onPressed: () {},
    );

    return new MaterialApp(
      title: 'Great Internet Mersenne Prime Search',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Great Internet Mersenne Prime Search'),
        ),
        body: new Form(
          child: new Column(
            children: <Widget>[
              usernameField,
              passwordField,
              submitButton,
            ],
          ),
        ),
      ),
    );
  }
}
