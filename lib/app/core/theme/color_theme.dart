
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoniAppColors {
 const MoniAppColors._();

 // greys
 static const Color greyBase = Color(0xFFCDCFD0);
 static const Color greyDark = Color(0xFF979C9E);
 static const Color grey5 = Color(0xFFEBF1F9);

 // dark
 static const Color darkBase = Color(0xFF404446);
 static const Color darkDark = Color(0xFF202325);
 static const Color darkLighter = Color(0xFF72777A);
 static const Color darkDarker = Color(0xFF202325);
 static const Color darkDarkest = Color(0xFF090A0A);

 // primary brand
 static const Color primaryBrandBase = Color(0xFFE66652);

 // secondary brand
 static const Color secondaryBrandBase = Color(0xFFF0CC79);
 static const Color secondaryBrandLightest = Color(0xFFFDF8ED);
 static const Color secondaryBrandDarkest = Color(0xFFEAB948);

 // yellow
 // static const Color greenLighter = Color(0xFF7DDE86);
 static const Color yellowDarker = Color(0xFFA05E03);

 // green
 static const Color greenLighter = Color(0xFF7DDE86);
 static const Color greenDarker = Color(0xFF198155);
 static const Color greenDarkest = Color(0xFF198155);
}

ButtonStyle textButtonStyle = TextButton.styleFrom(
    backgroundColor: MoniAppColors.primaryBrandBase,
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(6.0),
    ));
