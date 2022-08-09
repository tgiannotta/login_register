// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_register/Screen/Pagine/page_1.dart';
import 'package:login_register/Riusable/footer_menu.dart';
import 'package:login_register/Screen/Pagine/page_2.dart';
import 'package:login_register/Utilities/utilities.dart';

class ImageCarousel extends StatefulWidget {
  ImageCarousel({Key? key}) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  final controller = PageController(initialPage: 0);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {},
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/BeniceSlider.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 50,
                top: 150,
                child: Text(
                  'BENICE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 50,
                top: 190,
                child: Text(
                  'Alta sartoria napoletana',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Cagrouslider.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 50,
                bottom: 70,
                child: Text(
                  'ENTRE AMIS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Text(
                  'Moda e stile Made in Italy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page2(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/corbara.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 20,
                top: 90,
                child: Text(
                  'SAPORI DI CORBARA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 50,
                top: 130,
                child: Text(
                  'Editing Text Positioned',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Mondo50.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 50,
                bottom: 70,
                child: Text(
                  'MONDO 50',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Text(
                  'Moda e stile Made in Italy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Acta.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 50,
                top: 90,
                child: Text(
                  'ACTA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 50,
                top: 130,
                child: Text(
                  'Editing Text Positioned',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Offgrid.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 50,
                bottom: 70,
                child: Text(
                  'OFFGRID',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Text(
                  'Moda e stile Made in Italy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Generchef.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 50,
                top: 90,
                child: Text(
                  'GENERCHEF',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 50,
                top: 130,
                child: Text(
                  'Editing Text Positioned',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Mancini.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 50,
                bottom: 70,
                child: Text(
                  'MANCINI',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Text(
                  'Moda e stile Made in Italy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Coffeina.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 50,
                top: 90,
                child: Text(
                  'COFFEINA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 50,
                top: 130,
                child: Text(
                  'Editing Text Positioned',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Sef.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 50,
                bottom: 70,
                child: Text(
                  'SEF',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Text(
                  'Moda e stile Made in Italy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Ats.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 50,
                top: 90,
                child: Text(
                  'ATS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 50,
                top: 130,
                child: Text(
                  'Editing Text Positioned',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Birra.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 50,
                bottom: 70,
                child: Text(
                  'BIRRA CAMPANIA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Text(
                  'Moda e stile Made in Italy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Dms.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 50,
                top: 90,
                child: Text(
                  'DMS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 50,
                top: 130,
                child: Text(
                  'Editing Text Positioned',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Elica.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 50,
                bottom: 70,
                child: Text(
                  'ELICA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Text(
                  'Moda e stile Made in Italy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Comida.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 50,
                top: 90,
                child: Text(
                  'COMIDA',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 50,
                top: 130,
                child: Text(
                  'Editing Text Positioned',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Navigatore.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 50,
                bottom: 70,
                child: Text(
                  'COOPERARTE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Text(
                  'Moda e stile Made in Italy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/Enjoy.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 50,
                top: 90,
                child: Text(
                  'ENJOY',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                right: 50,
                top: 130,
                child: Text(
                  'Editing Text Positioned',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Stack(
            fit: StackFit.expand,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/giofran.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 50,
                bottom: 70,
                child: Text(
                  'GIOFRAN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                left: 50,
                bottom: 50,
                child: Text(
                  'Moda e stile Made in Italy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector card(String testo, Image image, Function onTap) {
    return GestureDetector();
  }
}
