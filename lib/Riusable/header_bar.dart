import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_register/Riusable/drawer.dart';
import 'package:login_register/Riusable/riusable_widget.dart';
import 'package:login_register/Screen/login_screen.dart';
import 'package:login_register/Utilities/utilities.dart';
import 'package:login_register/custom_icon_icons.dart';

class HeaderBar extends StatefulWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  const HeaderBar({Key? key}) : super(key: key);

  @override
  State<HeaderBar> createState() => _HeaderBarState();
}

enum _MenuValues { logOut }

class _HeaderBarState extends State<HeaderBar> {
  @override
  Widget build(BuildContext context) {
    final colorIcon = metallizatoChiaro;
    return AppBar(
      backgroundColor: Color(0x44000000),
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/indigopng.png',
              height: 30,
              width: 30,
            ),
          ),
          PopupMenuButton<_MenuValues>(
            icon: Icon(Icons.person),
            itemBuilder: ((context) => [
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: metallizato700,
                        ),
                        Text(' Logout'),
                      ],
                    ),
                    value: _MenuValues.logOut,
                  )
                ]),
            onSelected: (value) {
              switch (value) {
                case _MenuValues.logOut:
                  FirebaseAuth.instance.signOut().then((value) {
                    print('Signed Out');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  });
                  break;
              }
            },
          )
        ],
      ),
    );
    /* automaticallyImplyLeading: false); */
  }
}
