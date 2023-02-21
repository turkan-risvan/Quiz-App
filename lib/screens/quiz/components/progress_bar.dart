 

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/constants.dart';
import 'package:quizapp/controllers/question_controller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width:3 ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller)  {
          print(controller.animation.value);
          return Stack(
            children: [
             
              //LayoutBuilder bize kapsayıcı için kullanılabilir alan sağlar
              // animasyonumuz için kısıtlamalar.maxwidht gerekli
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width:constraints.maxWidth *controller.animation.value,
                  decoration:  BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.circular(50),
                  ),
                )),
                Positioned.fill(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:kDefaultPadding/2 ),
                  child: Row(
                    children: [
                      Text("${(controller.animation.value * 60).round()} sec"),
                      //SizedBox(width: 255,),
                      //Icon(Icons.lock_clock),
                      
                      ],
                      
                   
                  ),
                ))
            ],
          );
        },

      ),
    );
  }
}