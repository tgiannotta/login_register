import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_register/Riusable/drawer.dart';
import 'package:login_register/Riusable/footer_menu.dart';
import 'package:login_register/Riusable/header_bar.dart';
import 'package:login_register/Screen/home_screen.dart';
import 'package:login_register/Utilities/utilities.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: metallizato700,
      appBar: HeaderBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Image.asset('assets/images/CaGroupSlider.jpg'),
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
