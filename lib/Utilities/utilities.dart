import 'package:flutter/material.dart';

//Funzione che trasforma gli indici esadecimali in colore
coloriEsadecimali(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll('#', '');
  if (hexColor.length == 6) {
    hexColor = 'FF' + hexColor;
  }
  return Color(
    int.parse(hexColor, radix: 16),
  );
}

const metallizatoChiaro = Color(0xffeceff1);
const metallizatoScuro = Color(0xff263238);
const metallizato700 = Color(0xff455a64);
const metallizato200 = Color(0xffb0bec5);
