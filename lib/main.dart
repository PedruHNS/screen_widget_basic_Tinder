// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: BackGround(
        componente: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonBack(),
            Logo(),
            TermsUser(),
            ButtonSign(
              imagem: 'images/apple-logo.png',
              texto: 'SIGN IN WITH APPLE',
            ),
            ButtonSign(
              imagem: 'images/facebook-logo.png',
              texto: 'SIGN IN WITH FACEBOOK',
            ),
            ButtonSign(
              imagem: 'images/speech-bubble.png',
              texto: 'SIGN IN WITH PHONE NUMBER',
            ),
            RegisterTinder()
          ],
        ),
      ),
    );
  }
}

class BackGround extends StatelessWidget {
  final Widget componente;
  const BackGround({
    Key? key,
    required this.componente,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xffe94976),
            Color(0xffee7462),
          ],
        ),
      ),
      child: componente,
    );
  }
}

class ButtonBack extends StatelessWidget {
  const ButtonBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 150),
      child: Container(
        alignment: Alignment.centerLeft,
        width: 370,
        height: 100,
        child: Image.asset(
          'images/left-arrow.png',
          color: Colors.white,
          width: 28,
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      alignment: Alignment.center,
      child: Image.asset(
        'images/tinder-logo.png',
        width: 250,
      ),
    );
  }
}

class TermsUser extends StatelessWidget {
  const TermsUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        width: 360,
        alignment: Alignment.center,
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'By tapping Create Account or Sign In, you agree to our ',
            children: [
              TextSpan(
                text: 'Terms',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(text: '. Learn how we process your data in our '),
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(text: ' and '),
              TextSpan(
                text: 'Cookies Policy.',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonSign extends StatelessWidget {
  final String imagem;
  final String texto;
  const ButtonSign({
    Key? key,
    required this.imagem,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 360,
        height: 50,
        decoration: const BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: Colors.white, width: 1.5),
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagem, color: Colors.white, width: 25),
            const SizedBox(width: 15),
            Container(
              alignment: Alignment.center,
              width: 230,
              height: 50,
              child: Text(
                texto,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterTinder extends StatelessWidget {
  const RegisterTinder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 230,
        alignment: Alignment.center,
        child: const Text(
          'Trouble Signing In?',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
