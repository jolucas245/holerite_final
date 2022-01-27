import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:holerite/app/ui/screens/direct_print.dart';
import 'package:holerite/app/ui/screens/pdf_page.dart';
import 'package:http/http.dart' as http;

class PdfApi {

  getPdf(String mes, String cpf) async {
    Get.to(DirectPage(), arguments: [mes, cpf]);
  }
}
