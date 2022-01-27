import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:holerite/app/ui/widgets/textFields/custom_textfield.dart';

class CustomFieldWeb extends StatelessWidget {

  MaskedTextController controller = MaskedTextController(mask: "000.000.000-00");

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 480,
          height: 120,
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
              width: 460,
              height: 95,
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
                verticalContent: 40,
                controllerField: controller,
              )
            ),
          ),
        )
      ],
    );
  }
}