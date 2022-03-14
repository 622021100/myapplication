import 'package:flutter/material.dart';
import 'package:myapplication/screen/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Satun2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            text1(),
            subtext(),
            email(),
            password(),
            signinbutton(),
            // googlebutton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text2(),
                registerbutton(),
              ],
            ),
            // text3(),
          ],
        ),
      ),
    );
  }

  Widget signinbutton() {
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
            onPressed: () {},
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 20),
            )),
      ),
    );
  }

  Padding password() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(45, 2, 45, 2),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.password_rounded,
              color: Colors.black,
            ),
            label: Text(
              'Password',
              style: TextStyle(color: Colors.black),
            )),
      ),
    );
  }

  Padding email() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(45, 2, 45, 2),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email_rounded,
              color: Colors.black,
            ),
            label: Text(
              'E-mail',
              style: TextStyle(color: Colors.black),
            )),
      ),
    );
  }

  // Widget text3() {
  //   return const Center(
  //     child: Padding(
  //       padding: EdgeInsets.fromLTRB(0, 375, 0, 0),
  //       child: Text(
  //         'เกาะหลีเป๊ะ',
  //         style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
  //       ),
  //     ),
  //   );
  // }

  Widget text2() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Do not Have an Account?',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget text1() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 200, 35, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }

  Widget subtext() {
    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sign in with your email and password \nor continue with Google',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget registerbutton() {
    return SizedBox(
      child: TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 10, 123, 216)),
          ),
          onPressed: () {
            var route = MaterialPageRoute(
              builder: (context) => const RegisterScreen(),
            );
            Navigator.push(context, route);
          },
          child: const Text(
            'Register',
            style: TextStyle(fontSize: 15, color: Colors.white),
          )),
    );
  }
}
