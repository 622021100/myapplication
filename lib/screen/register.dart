import 'package:flutter/material.dart';
import 'package:myapplication/screen/content.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          child: Column(
            children: [
              text1(),
              email(),
              password(),
              registerbutton(),
            ],
          ),
        ),
      ),
    );
  }

  Padding text1() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(35, 120, 35, 5),
      child: Text(
        'Register',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }

  Widget registerbutton() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 10, 35, 2),
      child: SizedBox(
        child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
            ),
            onPressed: () {
              var route = MaterialPageRoute(
                builder: (context) => const Content(),
              );
              Navigator.push(context, route);
            },
            child: const Text(
              'Register',
              style: TextStyle(fontSize: 20),
            )),
      ),
    );
  }

  Padding password() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 2, 35, 0),
      child: TextFormField(
        decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.password_rounded,
              color: Colors.blue,
            ),
            label: Text(
              'Password',
              style: TextStyle(color: Colors.black),
            )),
      ),
    );
  }

  Padding email() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 5, 35, 2),
      child: TextFormField(
        decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.email_rounded,
              color: Colors.blue,
            ),
            label: Text(
              'E-mail',
              style: TextStyle(color: Colors.black),
            )),
      ),
    );
  }
}
