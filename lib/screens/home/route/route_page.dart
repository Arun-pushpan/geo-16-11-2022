

import 'package:flutter/material.dart';

import '../drawer/appsettings/appsetting.dart';
import '../drawer/appsettings/changePassword.dart';
import '../drawer/appsettings/editprofile.dart';
import '../drawer/favourite/favouritePage.dart';
import '../drawer/notification/notificationPage.dart';
import '../drawer/theme/themePage.dart';
import '../drawer/userProfile/userProfile.dart';
import '../homePage/fab/chat.dart';
import '../homePage/festival.dart';
import '../homePage/foods.dart';
import '../homePage/homePage.dart';
import '../homePage/places.dart';
import '../signIn/login.dart';
import '../signIn/splash.dart';
import '../signUp/register.dart';
const welcomePage='welcome';
const loginPage ="login";
const registerPage="register";
const homePage="home";
const appSettings="setting";
const editProfile="profile";
const changePassword="password";
const userProfile="user";
const places="place";
const foods="food";
const festivals="festival";
const notifications="notification";
const otpPage="otp";
const chatPage="chat";
const favourite="favourite";
const theme="theme";
const splash="splash";

void welcome(){}
void logins(){}
void register(){}
void home(){}
void setting(){}
void profile(){}
void password(){}
void user(){}
void place(){}
//void splash(){}

Route<dynamic>controller(RouteSettings settings){
  switch(settings.name){
    case splash:{
      return MaterialPageRoute(builder: (context)=>SplashScreenPage());

    }
//break;
    case loginPage:
      {
        return MaterialPageRoute(builder: (context)=>Login());
      }
    case registerPage:
      {
        return MaterialPageRoute(builder: (context)=>Register());
      }

    case homePage:
      {
        return MaterialPageRoute(builder: (context)=> Homepage(title: "GEOGRAF"));
      }
    case appSettings:
      {
        return MaterialPageRoute(builder: (context)=>Appsetting(title: "GEOGRAF"));
      }
    case editProfile:
      {
        return MaterialPageRoute(builder: (context)=>Editprofile(title: "GEOGRAF"));
      }
    case changePassword:
      {
        return MaterialPageRoute(builder: (context)=>Changepassword(title: "GEOGRAF"));
      }
    case userProfile:
      {
        return MaterialPageRoute(builder: (context)=>Userprofile(title: "GEOGRAF"));
      }
    case places:
      {
        return MaterialPageRoute(builder: (context)=>Place(title: "GEOGRAF"));
      }
    case foods:
      {
        return MaterialPageRoute(builder: (context)=>Food(title: "GEOGRAF"));
      }
    case festivals:
      {
        return MaterialPageRoute(builder: (context)=>Festival(title: "GEOGRAF"));
      }
    case notifications:
      {
        return MaterialPageRoute(builder: (context)=>Notifications(title: "GEOGRAF"));
      }
    case chatPage:
      {
        return MaterialPageRoute(builder: (context)=>Chat());
      }
    case favourite:
      {
        return MaterialPageRoute(builder: (context)=>Favourite());
      }
    case theme:
      {
        return MaterialPageRoute(builder: (context)=>ThemePage(title: "GEOGRAF"));
      }


    default:
      throw("no pages found");
  }
}