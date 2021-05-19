import 'package:flutter/material.dart';
import 'package:myapp/login/login.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _name;
  String _email;
  String _password;
  String _gender;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
    );
  }

  Widget _buildPassField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
    );
  }

  Widget _buildGenderField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Gender'),
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
              _buildEmailField(),
              _buildGenderField(),
              _buildPassField(),
              SizedBox(height: 40),
              ElevatedButton(
                child: Text(
                  'Sign up',
                  style: TextStyle(fontSize: 21),
                ),
                onPressed: () => {},
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'Click here to login',
                  style: TextStyle(color: Colors.green[900]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
