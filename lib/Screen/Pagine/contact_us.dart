import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_register/Riusable/header_bar.dart';
import 'package:login_register/Utilities/utilities.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final controllerNome = TextEditingController();
  final controllerMail = TextEditingController();
  final controllermessaggio = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: metallizato700,
      appBar: HeaderBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 50),
                child: Text(
                  'SCRIVICI',
                  style: TextStyle(fontSize: 28, color: metallizato200),
                ),
              ),
              CostruttoreTextField(
                  title: 'Nome e Cognome', controller: controllerNome),
              SizedBox(
                height: 20,
              ),
              CostruttoreTextField(title: 'Mail', controller: controllerMail),
              SizedBox(
                height: 20,
              ),
              CostruttoreTextField(
                  title: 'Contenuto',
                  controller: controllermessaggio,
                  maxLines: 3),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    /* minimumSize: Size.fromHeight(30), */
                    textStyle:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                onPressed: () => sendViaMail(
                  toName: controllerNome.text,
                  mail: controllerMail.text,
                  message: controllermessaggio.text,
                ),
                child: Text('INVIA'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget CostruttoreTextField({
    required String title,
    required TextEditingController controller,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: metallizato200),
        ),
        SizedBox(
          height: 3,
        ),
        TextField(
          style: TextStyle(color: metallizato200),
          controller: controller,
          maxLines: maxLines,
          cursorColor: metallizato200,
        )
      ],
    );
  }

  Future sendViaMail(
      {required String toName,
      required String mail,
      required String message}) async {
    final url =
        'mailTo: $mail?subject=${Uri.encodeFull(toName)}&body=${Uri.encodeFull(message)}';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
