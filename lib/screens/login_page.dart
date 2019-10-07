import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_page.dart';
import 'package:flutter_app/screens/session_page.dart';

//import 'package:login/primaary_button.dart';
//import 'auth.dart';
class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = new GlobalKey<FormState>();
  final myController = TextEditingController();

  bool _autovalidate = false;
  String _email;
  String _password;

  void initState() {
    super.initState();
    myController.addListener(validate);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void validate() {
    final form = formKey.currentState;
    if (form.validate()) {
      print('Form is valid)');
    } else {
      print('Form is invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: new Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(hintText: "Email Id"),
                  validator: (value) =>
                      value.isEmpty ? 'Email cant by empty' : null,
                  onSaved: (value) => _email = value,
                  onChanged: (text) {},
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Password"),
                  obscureText: true,
                  validator: (value) =>
                      value.isEmpty ? 'Password cant by empty' : null,
                  onSaved: (value) => _password = value,
                  onChanged: (text) {},
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.green,
                  colorBrightness: Brightness.dark,
                  child: Text("Login"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                )
              ],
            ),
          )),
    );
  }
}
/*class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Email Id"),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Password"),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.green,
              colorBrightness: Brightness.dark,
              child: Text("Login"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}*/
