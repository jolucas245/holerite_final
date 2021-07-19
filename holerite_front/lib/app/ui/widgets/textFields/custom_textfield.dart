import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:holerite/app/data/api/pdf_api.dart';
import 'package:holerite/app/ui/widgets/widgets_controller.dart';

class CustomTextField extends GetView<WidgetsController> {

  TextEditingController controllerField;
  double verticalContent;
  int fontSize;
  int iconSize;
  double rightSpaceIcon;
  CustomTextField({Key key, this.controllerField, this.verticalContent, this.fontSize, this.iconSize, this.rightSpaceIcon});

  PdfApi cpf = PdfApi();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        LengthLimitingTextInputFormatter(14)
      ],
      cursorColor: Colors.white,
      controller: controllerField,
      decoration: InputDecoration(
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(vertical: verticalContent ?? 0, horizontal: 10),
        hintText: "Seu CPF",
        hintStyle: TextStyle(
          fontSize: 26, color: Colors.indigo[800]
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(bottom: 15.0, right: rightSpaceIcon?? 20),
          child: IconButton(
            icon: Icon(Icons.search, size: iconSize ?? 50, color: Colors.white, ),
            onPressed: validate,
          ),
        ),
      ),
      style: GoogleFonts.fredokaOne(fontSize: fontSize ?? 30, color: Colors.white),
      onFieldSubmitted: submitted,
    );
  }


  // Mexe aqui não irmão
  validate(){
    RegExp regExp = RegExp(r'^[0-9.-]+$');
    if(controllerField.text.isEmpty){
      Get.isSnackbarOpen 
      ? null
      : 
      snackBarWidget("Preencha o campo abaixo", Colors.red);
    }else if(controllerField.text.length < 14){
      Get.isSnackbarOpen 
      ? null
      :
      snackBarWidget("Utilize 11 números", Colors.red);
    }else if(regExp.hasMatch(controllerField.text) == false){
      Get.isSnackbarOpen
      ? null
      :
      snackBarWidget("Utilize apenas números", Colors.red);
    }else{
      cpf.getPdf(controller.mes.value, controllerField.text);
    }

  }

  submitted(String v){
    Get.isSnackbarOpen 
    ? null
    : 
    snackBarWidget("Aperte na lupa para pesquisar", Colors.indigo);
  }

  snackBarWidget(String text, Color color){
    return Get.rawSnackbar(
      messageText: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      backgroundColor: color,
      duration: Duration(seconds: 3),
      borderRadius: 10,
      icon: Icon(Icons.warning, color: Colors.white),
      margin: EdgeInsets.only(top: 20, left: 100, right: 100),
      snackStyle: SnackStyle.FLOATING,
      snackPosition: SnackPosition.TOP,
      boxShadows: [
        BoxShadow(
          offset: Offset(-1, -1),
          blurRadius: 5,
          color: Colors.black
        )
      ]
    );
  }
}