
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Stack(
          children: [
            Center(
              child:  Container(
                child: Image.asset('assets/images/moni_logo.png', height: 100,)
              ),
            ),


          ],
        ),

    );
  }
}
