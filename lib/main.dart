import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geograf/screens/setTheme/modelTheme.dart';
import 'package:geograf/screens/home/signIn/login.dart';
import 'package:geograf/screens/setTheme/modelTheme.dart';
import 'package:geograf/screens/home/route/route_page.dart'as route;
import 'package:provider/provider.dart';
main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  final appTitle="GEOGRAF" ;
  const Myapp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(

      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
            return MaterialApp(
                title: appTitle,
                theme: themeNotifier.isDark

                    ? ThemeData(
                  brightness: Brightness.dark,
                )
                    : ThemeData(
                    brightness: Brightness.light,
                   primarySwatch: Colors.indigo,
                    primaryColor: Colors.indigo.shade100,
                    textTheme: TextTheme(
                headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
              bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            ),

                ),
                debugShowCheckedModeBanner: false,
                onGenerateRoute: route.controller,
              initialRoute: route.loginPage,
                //home:  SplashScreenPage(),
            );
          }
      ),
    );

  }
}

