

import 'package:flutter/material.dart';
import 'package:geograf/screens/home/signIn/login.dart';
import 'package:splashscreen/splashscreen.dart';


class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:[ Padding(
        padding: const EdgeInsets.only(left: 10 ,top: 60,right: 10,bottom: 10),
        child: SplashScreen(
          seconds: 100,
          navigateAfterFuture:Navigator.push(context,
        MaterialPageRoute(builder: (context)=>const Login())),
          //navigateAfterSeconds:

          backgroundColor: Colors.black,
          title: const Text('Explore  World'
            ,textScaleFactor: 2,
            style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white,
                fontSize:25),),

          image:  Image.asset('assets/img17.jpg'),

          loadingText: Text("Loading",

            style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.w700,fontSize: 25),),
          photoSize: 150.0,
          loaderColor: Colors.red,
        ),
      ),
    ]
    );
  }
}

//
// class SplashScreenPage extends StatelessWidget {
//
//
//   const SplashScreenPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }