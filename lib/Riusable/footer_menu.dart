import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_register/Riusable/riusable_widget.dart';
import 'package:login_register/Screen/Pagine/contact_us.dart';
import 'package:login_register/Screen/Pagine/page_1.dart';
import 'package:login_register/Screen/home_screen.dart';
import 'package:login_register/Screen/login_screen.dart';
import 'package:login_register/Screen/image_carousel.dart';
import 'package:login_register/Utilities/utilities.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterMenu extends StatefulWidget {
  const FooterMenu({Key? key}) : super(key: key);

  @override
  State<FooterMenu> createState() => _FooterMenuState();
}

enum _MenuValues { whatsapp, facebook, instagram, linkedin }

final urlInstagram = 'https://www.instagram.com/indigo.technology/';
final urlFacebook = 'https://www.facebook.com/IndigoIndustriesAgency';
final urlLinkedin = 'https://it.linkedin.com/company/indigo-industries-srl';
final urlWhatsapp = 'whatsapp://send?phone=393757229057';

class _FooterMenuState extends State<FooterMenu> with TickerProviderStateMixin {
  final colorIcon = metallizatoChiaro;
  int index = 0;

  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: metallizatoScuro,
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.home,
                color: colorIcon,
              ),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page1(),
                  ),
                );
              },
              icon: Icon(
                Icons.group,
                color: colorIcon,
              ),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactUs(),
                  ),
                );
              },
              icon: Icon(
                Icons.message,
                color: colorIcon,
              ),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page1(),
                  ),
                );
              },
              icon: Icon(
                Icons.handshake_outlined,
                color: colorIcon,
              ),
            ),
          ),
          Expanded(
            child: PopupMenuButton<_MenuValues>(
              icon: Icon(
                Icons.share,
                color: metallizatoChiaro,
              ),
              color: metallizatoChiaro,
              itemBuilder: (context) => [
                /* PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.whatsapp,
                        color: Colors.lightGreen,
                      ),
                      Text(' Whatsapp'),
                    ],
                  ),
                  value: _MenuValues.whatsapp,
                ), */
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      Text(' Facebook'),
                    ],
                  ),
                  value: _MenuValues.facebook,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.lightBlue,
                      ),
                      Text(' Linkedin'),
                    ],
                  ),
                  value: _MenuValues.linkedin,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.purple,
                      ),
                      Text(' Instagram'),
                    ],
                  ),
                  value: _MenuValues.instagram,
                ),
              ],
              onSelected: (value) {
                switch (value) {
                  case _MenuValues.facebook:
                    launch(
                      urlFacebook,
                      universalLinksOnly: true,
                    );
                    break;
                  case _MenuValues.whatsapp:
                    launch(urlWhatsapp, universalLinksOnly: true);
                    break;
                  case _MenuValues.instagram:
                    launch(
                      urlInstagram,
                      universalLinksOnly: true,
                    );
                    break;
                  case _MenuValues.linkedin:
                    launch(urlLinkedin, universalLinksOnly: true);
                    break;
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
