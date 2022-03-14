import 'package:flutter/material.dart';
import 'package:myapplication/screen/login.dart';
import 'package:myapplication/screen/register.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/Satun1.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.blue, BlendMode.darken)),
          ),
          child: ListView(
            children: [
              welcome(),
              subtitle1(),
              subtitle2(),
              button(context),
              textpic(),
            ],
          )),
    );
  }

  SizedBox button(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(45, 15, 200, 2),
        child: ElevatedButton.icon(
          icon: Icon(Icons.navigate_next_rounded),
          label: Text('Next'),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LoginScreen();
            }));
          },
        ),
      ),
    );
  }

  Widget welcome() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 120, 200, 0),
        child: Text(
          'Welcome',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }

  Widget subtitle1() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 5, 180, 0),
        child: Text(
          'Satun',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget subtitle2() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 130, 0),
        child: Text(
          'Tourism',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  // Widget button() {
  //   return Padding(
  //     padding: const EdgeInsets.fromLTRB(45, 15, 200, 2),
  //     child: SizedBox(
  //       width: double.infinity,
  //       child: ElevatedButton.icon(
  //         icon: const Icon(Icons.navigate_next_rounded),
  //         label: const Text('Next'),
  //         style: ButtonStyle(
  //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
  //             RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(32),
  //             ),
  //           ),
  //         ),
  //         onPressed: () {
  //           var route = MaterialPageRoute(
  //             builder: (context) => const RegisterScreen(),
  //           );
  //           Navigator.push(context, route);
  //         },
  //       ),
  //     ),
  //   );
  // }

  Widget textpic() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 295, 0, 0),
        child: Text(
          'อุทยานแห่งชาติหมู่เกาะเภตรา',
          style: TextStyle(
              fontSize: 15, color: Color.fromARGB(255, 193, 209, 218)),
        ),
      ),
    );
  }
}
