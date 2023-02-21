 

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/controllers/question_controller.dart';
import 'package:quizapp/screens/quiz/components/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      endDrawerEnableOpenDragGesture: true,
      appBar: AppBar(
        //Flutter  otomatik olarak geri düğmesini göster
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
           
          ElevatedButton(onPressed:_controller.nextQuestion,
         child: Text("Atla")),
         ],
      ),
      body: Body(),
    );
  }
}

