import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:holerite/app/ui/widgets/textFields/custom_textfield.dart';

class CustomFieldMobile extends StatelessWidget {

  MaskedTextController controller = MaskedTextController(mask: "000.000.000-00");

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.09,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                color: Colors.grey[300],
                offset: Offset(1,1)
              )
            ]
          ),
          child: Center(
            child: Container(
              width: 380,
              margin: EdgeInsets.only(right: 5, left: 5),
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.indigo[300],
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.indigo,
                    offset: Offset(1,1)
                  )
                ]
              ),
              child: CustomTextField(
                controllerField: controller,
                verticalContent: 5,
                fontSize: 20,
                iconSize: 30,
                rightSpaceIcon: 0,
              )
            ),
          ),
        )
      ],
    );
  }
}