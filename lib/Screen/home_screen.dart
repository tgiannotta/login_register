import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_register/Riusable/drawer.dart';
import 'package:login_register/Riusable/footer_menu.dart';
import 'package:login_register/Riusable/header_bar.dart';
import 'package:login_register/Riusable/riusable_widget.dart';
import 'package:login_register/Screen/image_carousel.dart';
import 'package:login_register/Screen/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: HeaderBar(),
      drawer: BurgerMenu(),
      body: ImageCarousel(),
      bottomNavigationBar: FooterMenu(),
    );
  }
}
