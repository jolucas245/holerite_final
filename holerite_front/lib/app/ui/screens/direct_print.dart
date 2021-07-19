import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

class DirectPage extends StatelessWidget {
  Future<Uint8List> _printPdf() async {
    final pdf = await rootBundle.load("assets/${Get.arguments[0]}/${Get.arguments[1]}.pdf");
    Printing.layoutPdf(onLayout: (_) => pdf.buffer.asUint8List());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => _printPdf(),
      ),
    );
  }
}
