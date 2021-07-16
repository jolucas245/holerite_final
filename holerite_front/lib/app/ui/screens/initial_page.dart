import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:holerite/app/ui/widgets/pagesFormat/page_mobile.dart';
import 'package:holerite/app/ui/widgets/pagesFormat/page_web.dart';

class InitialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: constraints.maxWidth > 600 ? PageWeb() : PageMobile(),
      );
    });
  }
}

