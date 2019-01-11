import 'package:flutter/material.dart';

class LoginData {
  String username = '';
  String password = '';
}

class LoginPage extends StatelessWidget {
  LoginData _loginData = new LoginData();

  void submit() {
    print('Username: ${_loginData.username}');
  }

  @override
  Widget build(BuildContext context) {
    final usernameField = new TextFormField(
      autofocus: false,
      onSaved: (String value) {
        this._loginData.username = value;
      },
      decoration: new InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.all(8.0),
      ),
    );

    final passwordField = new TextFormField(
      autofocus: false,
      obscureText: true,
      onSaved: (String value) {
        this._loginData.password = value;
      },
      decoration: new InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.all(8.0),
      ),
    );

    final spacer = new SizedBox(
      height: 8.0,
    );

    final submitButton = new RaisedButton(
      padding: EdgeInsets.all(8.0),
      child: Text('Login'),
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: this.submit,
    );

    return new MaterialApp(
      title: 'Great Internet Mersenne Prime Search',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Login to GIMPS'),
        ),
        body: new Container(
          padding: EdgeInsets.all(16.0),
          child: new Column(
            children: <Widget>[
              usernameField,
              spacer,
              passwordField,
              spacer,
              submitButton,
            ],
          ),
        ),
      ),
    );
  }
}
