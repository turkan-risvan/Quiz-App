

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/constants.dart';
import 'package:quizapp/controllers/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
    
      body: Stack(
        fit:StackFit.expand,
        children: [
           Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/icons/anaekran.png"))),
        ),
        Column(
          children: [
            Spacer(flex: 3),
            Text("Score",style:Theme.of(context).textTheme.headline3.copyWith(color:kSecondaryColor ),),
            Spacer(),
            Text("${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",style:Theme.of(context).textTheme.headline4.copyWith(color: kSecondaryColor),
            ),
            Spacer(flex: 3),
          ],
        )
        ],
      ),
    );
  }
}