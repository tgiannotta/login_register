import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_register/Screen/Pagine/page_1.dart';
import 'package:login_register/Utilities/utilities.dart';
import 'package:login_register/custom_icon_icons.dart';

class BurgerMenu extends StatefulWidget {
  const BurgerMenu({Key? key}) : super(key: key);

  @override
  State<BurgerMenu> createState() => _BurgerMenuState();
}

class _BurgerMenuState extends State<BurgerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0x44000000),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ]),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    );
  }

  Widget buildMenuItems([context]) {
    final color = metallizatoChiaro;
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.generchef_tavola_disegno_1,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'GENERCHEF',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.logosef,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'SEF',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.mancini,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'MANCINI',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.mnd_50_02,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'MONDO 50',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.navigatoredellacultura_logo,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'NAVIGATORE DELLA CULTURA',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.benice,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'BENICE',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.actalogocolor,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'ACTA',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.ats,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'ATS',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.sapori_corbara,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'SAPORI CORBARA',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.dms,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'DMS',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.comida,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'COMIDA',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.elicaloghi_tavola_disegno_1,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'ELICA',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.enjoy,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'ENJOY',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 15, 8),
              child: Icon(
                CustomIcon.entre_amis,
                color: color,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'ENTRE AMIS',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
              child: Icon(
                CustomIcon.completooffgrid_tavola_disegno_1_copia_3,
                color: color,
                size: 15,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
              child: Text(
                'OFF GRID',
                style: TextStyle(color: color),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
