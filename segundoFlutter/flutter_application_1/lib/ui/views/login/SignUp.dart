
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/views/login/Login.dart';
import 'package:flutter_application_1/widgets/Header.dart';
import 'package:flutter_application_1/widgets/Logo.dart';
import 'package:flutter_application_1/widgets/TextFieldCustom.dart';
import 'package:flutter_application_1/utils/Global.colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        physics: const BouncingScrollPhysics(),
        children: const [
          Stack(
            children: [HeaderLogin(), LogoHeader()],
          ),
          Title(),
          TextFields(),
          ButtonSIGNUp(),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const LoginView()));
            }, 
            child: const Text(
              'SIGN IN',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold,
                color: Colors.grey), 
              )),
          const Text(
            '/',
            style: TextStyle(fontSize: 25, color: Colors.grey),
          ),
          TextButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const SIGNUp()));
            }, 
            child: Text(
              'SIGN UP',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Globalcolors.darkColorH),
              ))
        ],
      ),
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Textfieldcustom(
            type: TextInputType.text, 
            icon: Icons.person_outlined, 
            label: 'User', 
            hint: 'Enter user'),
          const SizedBox(
            height: 20,
          ),
          Textfieldcustom(
            type: TextInputType.emailAddress, 
            icon: Icons.email_outlined, 
            label: 'Email', 
            hint: 'Enter email address'),
          const SizedBox(
            height: 20,
          ),
          Textfieldcustom(
            type: TextInputType.phone, 
            icon: Icons.phone_outlined, 
            label: 'Phone', 
            hint: 'Enter phone'),
          const SizedBox(
            height: 20,
          ),
          Textfieldcustom(
            type: TextInputType.visiblePassword, 
            icon: Icons.password_outlined, 
            label: 'Password', 
            hint: 'Enter Password',
            pass: true),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class ButtonSIGNUp extends StatelessWidget {
  const ButtonSIGNUp({super.key});

  @override
  Widget build(Object context) {
    // TODO: implement build
    
    return Container(
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Globalcolors.secondaryColorH,
        borderRadius: const BorderRadius.all(Radius.circular(50))),
      child: TextButton(
        onPressed: () => {}, 
        child: const Text(
          'SIGN UP',
          style: TextStyle(
            height: 3.1,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        )));
  }
}