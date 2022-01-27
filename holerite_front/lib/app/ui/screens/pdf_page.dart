import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Consulta de Holerites",
              style: TextStyle(color: Colors.black)),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Get.back(),
          ),
        ),
        body: Container(
            child: SfPdfViewer.asset(
          'assets/${Get.arguments}.pdf',
          enableDoubleTapZooming: true,
          canShowPaginationDialog: true,
        )));
  }
}
