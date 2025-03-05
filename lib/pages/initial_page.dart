import 'package:ecoride/pages/auth_choice_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  final String welcomeText =
      'Bem-vindo ao EcoRide! '
      'Junte-se a nós e faça parte de uma comunidade que compartilha '
      'viagens e preserva o planeta.';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(height: 20),
              Image.asset("assets/images/logo_initialscreen.png", fit: BoxFit.cover, width: (kIsWeb)?MediaQuery.of(context).size.height *0.6:MediaQuery.of(context).size.width * 1),
              SizedBox(height: 40),

              Container(
                margin: EdgeInsets.symmetric(horizontal:(kIsWeb)?MediaQuery.of(context).size.height *0.4:MediaQuery.of(context).size.width * 0.01),
                child: Text(
                  welcomeText,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => auth_choice_screen()));
                  },
                  style: ButtonStyle(
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    backgroundColor: WidgetStateProperty.all(
                      Color.fromRGBO(241, 59, 100, 1),
                    ),
                  ),
                  child: Text("Começar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
