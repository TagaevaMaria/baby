import 'package:flutter/material.dart';
import '../../aut.dart/register/register_screen.dart';
import '../../aut.dart/login_screen/login_screen.dart';
import '../../aut.dart/reset_password_screen.dart';
import '../../aut.dart/verify_email_screen.dart';
import '../../main_screen/notes/notes_widget.dart';
import '../../main_screen/notes/notes_widget_form.dart';
import '../../main_screen/profile_child/screen_profile_child.dart';
import '../../main_screen/screenHeightWeight/indicator_calendar_weight.dart';
import '../../main_screen/screenHeightWeight/screen_height_weight.dart';
import '../../main_screen/screen_allergy/screen_allergy.dart';
import '../../main_screen/screen_doctors/screen_doctors.dart';
import '../../screens registration/add_child/add_child.dart';
import '../../main_screen/main_screen.dart';
import '../../main_screen/screen_achievements.dart';
import '../../main_screen/screen_photo/screen_photo.dart';

class MainNavigationRouteNames {
  static const loginScreenDI = '/';
  static const mainScreen = '/mainScreen';
  static const welcomScreen = '/welcomScreen';
  static const authorization = '/authorization';
  static const screenAchievements = '/screen_achievements';
  static const screenDoctors = '/screen_doctors';
  static const notesWidget = '/notes_widget';
  static const notesWidgetForm = '/notes_widget_form';
  static const screenPhoto = '/screen_photo';
  static const screenAllergy = '/screen_allergy';
  static const screenHeightWeight = '/screen_height_weight';
  static const indicatorCalendarWeight = '/indicator_calendar_weight';
  static const photoByMons = '/photo_by_mons';
  static const addChild = '/add_child';
  static const screenProfileChild = '/screenProfileChild';
  static const verifyEmailScreen = '/verifyEmailScreen';
  static const accountScreen = '/accountScreen';
  static const resetPassword = '/resetPassword';
  static const registerScreenDI = '/registerScreenDI';

}


class MainNavigation {
  final initialRoute = MainNavigationRouteNames.loginScreenDI;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.mainScreen: (context) => const MainScreen(),
    MainNavigationRouteNames.screenAchievements: (context) =>
        const ScreenAchievements(),
    MainNavigationRouteNames.screenDoctors: (context) => const ScreenDoctors(),
    MainNavigationRouteNames.notesWidget: (context) => const NotesWidget(),
    MainNavigationRouteNames.notesWidgetForm: (context) => const NotesWidgetForm(),
    MainNavigationRouteNames.screenPhoto: (context) => const ScreenPhotoBody(),
    MainNavigationRouteNames.screenAllergy: (context) => const ScreenAllergy(),
    MainNavigationRouteNames.screenHeightWeight: (context) =>
        const ScreenHeightWeight(),
    MainNavigationRouteNames.indicatorCalendarWeight: (context) =>
        const IndicatorCalendarWeight(),
    MainNavigationRouteNames.addChild: (context) => const AddChild(),
    MainNavigationRouteNames.screenProfileChild: (context) =>
        const ScreenProfileChild(),
    MainNavigationRouteNames.verifyEmailScreen: (context) =>
        const VerifyEmailScreen(),
    MainNavigationRouteNames.resetPassword: (context) => const ResetPassword(),
    MainNavigationRouteNames.accountScreen: (context) => const RegisterScreen(),
    MainNavigationRouteNames.loginScreenDI: (context) => const LoginScreenDI(),
    MainNavigationRouteNames.registerScreenDI: (context) => const RegisterScreenDI(),

  };
}
