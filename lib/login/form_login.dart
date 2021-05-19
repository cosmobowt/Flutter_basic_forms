import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormLoginState();
  }
}

class FormLoginState extends State<FormLogin> {
  String _name;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
    );
  }

  Widget _buildPassField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forms")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          child: Column(
            children: <Widget>[
              _buildNameField(),
              _buildPassField(),
              SizedBox(height: 40),
              ElevatedButton(
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 21),
                ),
                onPressed: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
