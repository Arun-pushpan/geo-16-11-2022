
import 'dart:convert';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:geograf/screens/home/route/route_page.dart'as route;
import 'package:http/http.dart'as http;
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey=GlobalKey<FormState>();
  var size,width,height;
  @override
  bool _isObscure=true;
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Form(
        key: _formKey,
        child: Scaffold(
          body: ListView(

              children:[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(

                    width: 200,
                    height: 900,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Colors.white, Colors.white])
                    ),

                    child: Center(

                        child: Padding(
                          padding: const EdgeInsets.only(left: 40,top: 30,right: 40,bottom: 70),
                          child: Column(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  //child: Text("Let's Create Your Profile"),
                                  child: AnimatedTextKit(
                                    animatedTexts: [
                                      WavyAnimatedText(' Create Your Profile',textStyle:  TextStyle(color: Colors.black,fontSize:35,
                                          fontWeight: FontWeight.w900),),
                                    ],
                                  )
                              ),SizedBox(height: 30,),
                              Container(
                                height: 600,
                                width: 500,
                                child: Padding(padding:EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                                  child: Card(
                                    elevation: 100,
                                    color: Colors.indigo.shade100,
                                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40)),
                                    child: Column(
                                      children:  [SizedBox(height:60),
                                        Padding(padding: EdgeInsets.only(left: 30,right: 30,bottom: 10,top: 10),
                                          child: Text("GEOGRAF",
                                            style: TextStyle(fontSize:30,fontWeight:FontWeight.w900,
                                            ),),
                                        ),
                                        SizedBox(height: 40,),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 20),
                                          child: TextFormField(

                                              style:  TextStyle(fontSize:20),
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(),
                                                hintText:"Enter Email ",
                                                hintStyle:TextStyle(fontSize:15,),
                                                label: Text("Email",style: TextStyle(fontSize:22),),
                                                icon: Icon(Icons.email,),
                                              ),
                                              validator: (value){
                                                if(value!.isEmpty){
                                                  return 'Please enter your email';
                                                }
                                                if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$").hasMatch(value)){
                                                  return "Please enter valid email";
                                                }

                                                return null;
                                              }
                                          ),
                                        ),

                                        SizedBox(height:20),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 20),
                                          child: TextFormField(
                                            style:  TextStyle(fontSize:20),
                                            obscureText: _isObscure,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText:"Enter Password",
                                              hintStyle:TextStyle(fontSize:15,),
                                              label:Text ("Password",style: TextStyle(fontSize:22),),
                                              icon: Icon(Icons.lock,),
                                              suffixIcon: IconButton(

                                                icon: Icon(
                                                  _isObscure ? Icons.visibility : Icons.visibility_off,

                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _isObscure = !_isObscure;
                                                  });
                                                },
                                              ),
                                            ),
                                            validator: (value){
                                              if(value!.isEmpty){
                                                return 'Please enter your password';
                                              }
                                              if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value)){
                                                return 'Please enter alphabets must be upper and lower\n,number,special character';
                                              }
                                              return null;
                                            },
                                          ),
                                        ),
                                        SizedBox(height:20),

                                        TextButton(onPressed: (){},

                                            child: Text(


                                              "Recall Password?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                                            )
                                        ),

                                        SizedBox(height:10,),

                                        Padding(
                                          padding: const EdgeInsets.only(left: 45,top: 20,right: 25,bottom: 20),
                                          child: Container(
                                            width: 300,
                                            height: 40,
                                            // child: ElevatedButton.icon(onPressed: (){
                                            //   if(_formKey.currentState!.validate()) {
                                            //     Navigator.pushNamed(
                                            //         context, route.homePage);
                                            //   };
                                            // },
                                            //     //icon: Icon(Icons.login),
                                            //     child: Text("Login",style: TextStyle(fontSize:25,fontWeight:FontWeight.w700),)
                                            // ),
                                              child:ElevatedButton(
                                                onPressed:() {
                                                  if (_formKey.currentState!.validate()) {
                                                    Navigator.pushNamed(context, route.homePage);
                                                  }
                                                }, child: Text("Login",
                                                style:TextStyle(fontWeight:FontWeight.w700,
                                                    fontSize:30),),

                                              )
                                          ),
                                        ),
                                        SizedBox(height:10),
                                        Container(
                                            padding: EdgeInsets.all(10),
                                            child: Center(
                                              child: RichText(
                                                text: TextSpan(
                                                    text: 'Need an account?',
                                                    style: TextStyle(
                                                        color: Colors.red, fontSize: 20),
                                                    children: <TextSpan>[
                                                      TextSpan(text: ' Sign up',
                                                          style: TextStyle(
                                                              color: Colors.blueAccent, fontSize: 20),
                                                          recognizer: TapGestureRecognizer()
                                                            ..onTap = () {
                                                              Navigator.pushNamed(context, route.registerPage);
                                                              // navigate to desired screen
                                                            }
                                                      )
                                                    ]
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),

                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

              ]
          ),
        )
    );

  }
}
