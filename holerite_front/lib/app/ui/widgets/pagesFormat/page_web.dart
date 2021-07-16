import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:holerite/app/ui/widgets/textFields/custom_field_web.dart';

class PageWeb extends StatelessWidget {
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
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.cyanAccent[400], Colors.blue[400]]
              ), 
              boxShadow: [
              BoxShadow(
                offset: Offset(-1, 1), blurRadius: 5, color: Colors.black)
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/logo.png",
                  scale: 4,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Prefeitura Municipal de Alterosa",
                      style: GoogleFonts.anton(fontSize: 30, color: Colors.white)
                    ),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: RotatedBox(
              quarterTurns: 1,
              child: Image.asset("assets/beta.jpg", width: 100, height: 100,),
            ),
          ),
          Center(child: CustomFieldWeb())
        ],
      ),
    );
  }
}
