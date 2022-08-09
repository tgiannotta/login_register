import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_register/Screen/login_screen.dart';
import 'package:login_register/Utilities/utilities.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 350,
    height: 250,
  );
}

TextField riusableTextField(
  String text,
  IconData icon,
  bool isPassword,
  TextEditingController controller,
) {
  bool isHidden = false;

  return TextField(
    controller: controller,
    obscureText: isPassword,
    cursorColor: metallizato700,
    style: TextStyle(color: metallizato700),
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: metallizato700,
      ),
      labelText: text,
      labelStyle: TextStyle(color: metallizato700),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      filled: true,
      fillColor: metallizatoChiaro,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(width: 0, style: BorderStyle.none),
      ),
    ),
    keyboardType:
        isPassword ? TextInputType.visiblePassword : TextInputType.emailAddress,
  );
}

Container loginButton(BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        isLogin ? 'LOGIN' : 'REGISTER',
        style: TextStyle(
            color: metallizatoChiaro,
            fontWeight: FontWeight.bold,
            fontSize: 16),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return metallizatoScuro;
            } else {
              return metallizato700;
            }
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ),
  );
}

Container logoutButton() {
  return Container(
    height: 20,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: ElevatedButton(
      onPressed: () {
        /* onTap(); */
      },
      child: Text('Prova'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return metallizatoScuro;
          } else {
            return metallizato700;
          }
        }),
      ),
    ),
  );
}

/* PopupMenuItem buildPopUpMenuItem(
  String title,
  IconData iconData,
) {
  return PopupMenuItem(
    child: Row(
      children: [
        Icon(iconData, color: metallizato700),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
          ),
        ),
      ],
    ),
  );
} */
/* class BottoneIcona extends StatelessWidget {
  final Color backGroundColor;
  final Color borderColor;
  final IconData icona;
  double size;
  final Function parti;

  const BottoneIcona(
      {Key? key,
      required this.backGroundColor,
      required this.borderColor,
      required this.icona,
      required this.size,
      required this.parti})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
 */