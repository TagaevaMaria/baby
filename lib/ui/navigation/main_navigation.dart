import 'package:baby/main.dart';
import 'package:baby/ui/navigation/main_navigation_route_names.dart';
import 'package:baby/ui/pages/add_child/add_child.dart';
import 'package:baby/ui/pages/aut.dart/login_screen/login_screen.dart';
import 'package:baby/ui/pages/aut.dart/register/register_screen.dart';
import 'package:baby/ui/pages/aut.dart/reset_password_screen.dart';
import 'package:baby/ui/pages/aut.dart/successfully_registered/successfully_registered_screen.dart';
import 'package:baby/ui/pages/main_screen/main_screen.dart';
import 'package:baby/ui/pages/main_screen/main_screen_model.dart';
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
import '../pages/proverka.dart';


class MainNavigation implements MyAppNavigation {

 const  MainNavigation();
  @override
  final initialRoute = MainNavigationRouteNames.loginScreenDI;
  @override
  Map <String, Widget Function(BuildContext)> get routes => {
    MainNavigationRouteNames.registerScreenDI: (context) =>
        const RegisterScreenDI(),
    MainNavigationRouteNames.mainScreenDI: (context) =>   MainScreenDI(model: MainScreenModelVM(),),
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
    MainNavigationRouteNames.addChild: (context) => const AddChildDI(),
    MainNavigationRouteNames.screenProfileChild: (context) =>
        const ScreenProfileChildDI(),
    MainNavigationRouteNames.resetPassword: (context) => const ResetPassword(),
    MainNavigationRouteNames.loginScreenDI: (context) => const LoginScreenDI(),
    MainNavigationRouteNames.successfullyRegisteredScreenDI: (context) =>
        const SuccessfullyRegisteredScreenDI(),
    MainNavigationRouteNames.newNoteScreenDI: (context) =>
        const NewNoteScreenDI(),
    MainNavigationRouteNames.showNotesDI: (context) => const ShowNotesDI(),
    MainNavigationRouteNames.proverka: (context) => const Proverka(),
  };
}
