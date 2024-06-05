import 'package:baby/screens%20registration/add_child/add_child.dart';
import 'package:baby/ui/pages/aut.dart/login_screen/login_screen.dart';
import 'package:baby/ui/pages/aut.dart/register/register_screen.dart';
import 'package:baby/ui/pages/aut.dart/reset_password_screen.dart';
import 'package:baby/ui/pages/aut.dart/successfully_registered/successfully_registered_screen.dart';
import 'package:baby/ui/pages/main_screen.dart';
import 'package:baby/ui/pages/notes/new_notes_screen.dart';
import 'package:baby/ui/pages/notes/notes_screen.dart';
import 'package:baby/ui/pages/notes/show_notes.dart';
import 'package:baby/ui/pages/profile_child/screen_profile_child.dart';
import 'package:baby/ui/pages/screenHeightWeight/indicator_calendar_weight.dart';
import 'package:baby/ui/pages/screenHeightWeight/screen_height_weight.dart';
import 'package:baby/ui/pages/screen_achievements.dart';
import 'package:baby/ui/pages/screen_allergy/screen_allergy.dart';
import 'package:baby/ui/pages/screen_doctors/screen_doctors.dart';
import 'package:baby/ui/pages/screen_photo/screen_photo.dart';
import 'package:flutter/material.dart';


class MainNavigationRouteNames {
  static const loginScreenDI = '/';
  static const screenAchievements = '/screen_achievements';
  static const screenDoctors = '/screen_doctors';
  static const notesScreenDI = '/notes_screen_DI';
  static const screenPhoto = '/screen_photo';
  static const screenAllergy = '/screen_allergy';
  static const screenHeightWeight = '/screen_height_weight';
  static const indicatorCalendarWeight = '/indicator_calendar_weight';
  static const photoByMons = '/photo_by_mons';
  static const addChild = '/add_child';
  static const screenProfileChild = '/screen_profile_child';
  static const resetPassword = '/reset_password';
  static const mainScreen = '/main_screen';
  static const successfullyRegisteredScreenDI = '/successfully_registered_screen_DI';
  static const registerScreenDI = '/register_screen_DI';
  static const newNoteScreenDI = '/new_note_screen_DI';
  static const showNotesDI = '/show_notes_DI';
}


class MainNavigation {
  final initialRoute = MainNavigationRouteNames.loginScreenDI;
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.registerScreenDI: (context) => const RegisterScreenDI(),
    MainNavigationRouteNames.mainScreen: (context) => const MainScreen(),
    MainNavigationRouteNames.screenAchievements: (context) =>
        const ScreenAchievements(),
    MainNavigationRouteNames.screenDoctors: (context) => const ScreenDoctors(),
    MainNavigationRouteNames.notesScreenDI: (context) => const NotesScreenDI(),
    MainNavigationRouteNames.screenPhoto: (context) => const ScreenPhotoBody(),
    MainNavigationRouteNames.screenAllergy: (context) => const ScreenAllergy(),
    MainNavigationRouteNames.screenHeightWeight: (context) =>
        const ScreenHeightWeight(),
    MainNavigationRouteNames.indicatorCalendarWeight: (context) =>
        const IndicatorCalendarWeight(),
    MainNavigationRouteNames.addChild: (context) => const AddChild(),
    MainNavigationRouteNames.screenProfileChild: (context) =>
        const ScreenProfileChild(),
    MainNavigationRouteNames.resetPassword: (context) => const ResetPassword(),
    MainNavigationRouteNames.loginScreenDI: (context) => const LoginScreenDI(),
    MainNavigationRouteNames.successfullyRegisteredScreenDI: (context) => const SuccessfullyRegisteredScreenDI(),
    MainNavigationRouteNames.newNoteScreenDI: (context) => const NewNoteScreenDI(),
    MainNavigationRouteNames.showNotesDI: (context) => const ShowNotesDI(),

  };
}
