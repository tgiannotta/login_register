import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_register/Riusable/riusable_widget.dart';
import 'package:login_register/Screen/home_screen.dart';
import 'package:login_register/Screen/register_screen.dart';
import 'package:login_register/Utilities/utilities.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                logoWidget(
                  'assets/images/LogoWhiteINDIGO.png',
                ),
                riusableTextField('Inserisci l\'email', Icons.person_outline,
                    false, _emailController),
                SizedBox(
                  height: 15,
                ),
                riusableTextField('Inserisci la Password', Icons.lock_outline,
                    true, _passwordController),
                SizedBox(
                  height: 20,
                ),
                loginButton(context, true, () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text)
                      .then((value) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }).onError((error, stackTrace) {
                    print('Error ${error.toString()}');
                  });
                }),
                opzioniLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row opzioniLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Non hai ancora un account? ',
          style: TextStyle(color: metallizato700),
        ),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RegisterScreen(),
                ),
              );
            },
            child: Text(
              'Registrati',
              style: TextStyle(
                color: metallizatoScuro,
                fontWeight: FontWeight.bold,
              ),
            )),
      ],
    );
  }
}
