
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:geograf/screens/home/route/route_page.dart'as route;

class Appsetting extends StatefulWidget {
  const Appsetting({Key? key,required String this.title}) : super(key: key);
  final String title;
  @override
  State<Appsetting> createState() => _AppsettingState();
}

class _AppsettingState extends State<Appsetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
        ),
      ),
      body: Container(

        padding: const EdgeInsets.only(left: 40, right: 40, bottom: 100, top: 60),
        child: Container(

          color: Colors.indigo.shade100,
          width: 800,
          height: 500,


          child: ListView(children:
          [
            Padding(
              padding: const EdgeInsets.only(left: 60,top: 30),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('App Settings',textStyle:  TextStyle(fontSize:35,
                      fontWeight: FontWeight.w900),),

                ],
              ),
            ),
            // Text('  Account Settings',style: TextStyle(fontSize:35,fontWeight: FontWeight.w900,color: Colors.black),),
            SizedBox(height: 50),

            ListTile(
              onTap: (){
                Navigator.pushNamed(context, route.editProfile);
              },
              leading: const Icon(Icons.edit,size: 35),
              title: const Text(
                "Edit Profile",

                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(height: 40),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, route.changePassword);
              },
              leading: const Icon(Icons.key,size: 35),
              title: const Text(
                "Change Password",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(height: 40),
            ListTile(
              onTap: (){
                // Navigator.pushNamed(context, route.userProfile);
              },
              leading: const Icon(Icons.lock,size: 35),
              title: const Text(
                "Privacy",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(height: 40),
            ListTile(
              onTap: (){
                // Navigator.pushNamed(context, route.userProfile);
              },
              leading: const Icon(Icons.edit,size: 35),
              title: const Text(
                "About",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
            )
          ]),
        ),
      ),
    );
  }
}