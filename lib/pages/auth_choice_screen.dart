import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class auth_choice_screen extends StatefulWidget {
  const auth_choice_screen({super.key});

  @override
  State<auth_choice_screen> createState() => _auth_choice_screenState();
}

class _auth_choice_screenState extends State<auth_choice_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_authchoice.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),child: Container(child: Text("Já tem uma conta?",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),)),),
              Container(margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),child: Container(width: MediaQuery.of(context).size.width * 0.9,child: Text("Já tem uma conta? Faça login e encontre sua próxima carona solidária.",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),))),
              Container( margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),child: Text("Novo por aqui?", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),
              Container(margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),child: Container(width: MediaQuery.of(context).size.width * 0.9,child: Text("Crie sua conta e comece a compartilhar caronas hoje mesmo. Economize, conecte-se e ajude a reduzir a pegada de carbono.", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),))),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Container(margin: EdgeInsets.symmetric(horizontal: (kIsWeb)?MediaQuery.of(context).size.height *0.7:MediaQuery.of(context).size.width * 0.08, vertical: MediaQuery.of(context).size.height *0.03),child: TextButton(style: ButtonStyle(minimumSize: WidgetStateProperty.all(Size(double.infinity, 50)),foregroundColor: WidgetStateProperty.all(Colors.white),backgroundColor: WidgetStateProperty.all(Color.fromRGBO(63, 200, 190, 1))),onPressed: (){}, child: Text("Login"))),
            Container(margin: EdgeInsets.symmetric(horizontal: (kIsWeb)?MediaQuery.of(context).size.height *0.7:MediaQuery.of(context).size.width * 0.08),child: TextButton(style: ButtonStyle(minimumSize: WidgetStateProperty.all(Size(double.infinity, 50)),foregroundColor: WidgetStateProperty.all(Colors.white),backgroundColor: WidgetStateProperty.all(Color.fromRGBO(241, 59, 100, 1))),onPressed: (){}, child: Text("Cadastre-se")))

            ],
          )),
        ),
      ),
    );
  }
}
