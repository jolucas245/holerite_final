import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:holerite/app/ui/widgets/textFields/custom_field_web.dart';
import 'package:holerite/app/ui/widgets/widgets_controller.dart';

class PageWeb extends GetView<WidgetsController> {
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Radio(
                      //   value: "maio", 
                      //   groupValue: controller.mes.value, 
                      //   onChanged: (String value){
                      //     controller.mes.value = value;
                      //   },
                      //   activeColor: Colors.indigo,
                      // ),
                      // Text("Maio", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),),
                      // Radio(
                      //   value: "junho", 
                      //   groupValue: controller.mes.value, 
                      //   onChanged: (String value){
                      //   controller.mes.value = value;
                      // },
                      // activeColor: Colors.indigo,
                      // ),
                      // Text("Junho", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),),
                      // Radio(
                      //   value: "julho", 
                      //   groupValue: controller.mes.value, 
                      //   onChanged: (String value){
                      //   controller.mes.value = value;
                      // },
                      // activeColor: Colors.indigo,
                      // ),
                      // Text("Julho", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),),
                      // Radio(
                      //   value: "agosto", 
                      //   groupValue: controller.mes.value, 
                      //   onChanged: (String value){
                      //   controller.mes.value = value;
                      // },
                      // activeColor: Colors.indigo,
                      // ),
                      // Text("Agosto", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),),
                      Radio(
                        value: "setembro", 
                        groupValue: controller.mes.value, 
                        onChanged: (String value){
                        controller.mes.value = value;
                      },
                      activeColor: Colors.indigo,
                      ),
                      Text("Setembro", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),),
                      Radio(
                        value: "outubro", 
                        groupValue: controller.mes.value, 
                        onChanged: (String value){
                        controller.mes.value = value;
                      },
                      activeColor: Colors.indigo,
                      ),
                      Text("Outubro", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),),
                      Radio(
                        value: "novembro", 
                        groupValue: controller.mes.value, 
                        onChanged: (String value){
                        controller.mes.value = value;
                      },
                        activeColor: Colors.indigo,
                      ),
                      Text("Novembro", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),),
                      Radio(
                        value: "dezembro", 
                        groupValue: controller.mes.value, 
                        onChanged: (String value){
                        controller.mes.value = value;
                      },
                      activeColor: Colors.indigo,
                      ),
                      Text("Dezembro", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),),
                      Radio(
                        value: "fundeb", 
                        groupValue: controller.mes.value, 
                        onChanged: (String value){
                        controller.mes.value = value;
                      },
                      activeColor: Colors.indigo,
                      ),
                      Text("FUNDEB", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),),
                    ],
                  ),
                ),
                CustomFieldWeb()
              ],
            ),
          )
        ],
      ),
    );
  }
}
