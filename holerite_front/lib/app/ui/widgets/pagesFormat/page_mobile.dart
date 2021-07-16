import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:holerite/app/ui/widgets/textFields/custom_field_mobile.dart';

class PageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.5,
            decoration: BoxDecoration(color: Colors.blue[600], boxShadow: [
              BoxShadow(
                offset: Offset(-1, 1), blurRadius: 5, color: Colors.black)
            ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo.png",
                  width: 250,
                  height: 200,
                ),
                SizedBox(height: 75,),
                CustomFieldMobile()
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: RotatedBox(
              quarterTurns: 1,
              child: Image.asset("assets/beta.jpg", width: 100, height: 100,),
            ),
          )
        ],
      ),
    );
  }
}