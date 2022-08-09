import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:login_register/Riusable/riusable_widget.dart';
import 'package:login_register/Screen/home_screen.dart';
import 'package:login_register/Utilities/utilities.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Registrati',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        //Creiamo un gradiente richiamando la funzione di coloriEsadecimali
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            coloriEsadecimali('263238'),
            coloriEsadecimali('70909c'),
            coloriEsadecimali('eceff1'),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                riusableTextField('Insert email', Icons.person_outline, false,
                    _emailController),
                SizedBox(
                  height: 20,
                ),
                riusableTextField('Enter Password', Icons.lock_outline, true,
                    _passwordController),
                loginButton(context, false, () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text)
                      .then((value) {
                    print('Registrazione avvenuta con Successo');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }).onError((error, stackTrace) {
                    print('Errore ${error.toString()}');
                  });
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
