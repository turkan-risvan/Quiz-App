// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/constants.dart';
import 'package:quizapp/screens/quiz/quiz_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/icons/anaekran.png"))),
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Spacer(flex:2),// 2/6
              Text("Hadi Teste Başlayalım, ",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              const Text("Bilgilerinizi aşağıya giriniz."),
              const Spacer(),// 1/6
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF1C2341),
                    hintText: "Kullanıcı Adı",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    )),
              ),
             const Spacer(),// 1/6
             InkWell(
               onTap: () =>Get.to(QuizScreen()),
               child: Container(
                 width: double.infinity, 
                 alignment: Alignment.center,
                 padding: EdgeInsets.all(kDefaultPadding * 0.75), //15
                 decoration: BoxDecoration(gradient:kPrimaryGradient,borderRadius: BorderRadius.all(Radius.circular(12)),),
                 child: Text(" Text'e başla",style: Theme.of(context).textTheme.button.copyWith(color:Colors.black ),),
               ),
             ),
             const Spacer(flex:2),// 2/6 sını boşluk alacak
            ],
          ),
        ))
      ]),
    );
  }
}
