import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_register/Riusable/drawer.dart';
import 'package:login_register/Riusable/footer_menu.dart';
import 'package:login_register/Riusable/header_bar.dart';
import 'package:login_register/Screen/home_screen.dart';
import 'package:login_register/Utilities/utilities.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: metallizato700,
      appBar: HeaderBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Image.asset('assets/images/BenicePaginaInterna.jpg'),
        ),
      ),
      bottomNavigationBar: FooterMenu(),
    );

    /* ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
      child: Text('BACK TO HOME'),
    ); */
  }
}
