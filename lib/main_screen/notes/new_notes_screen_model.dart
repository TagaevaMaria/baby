import 'package:baby/ui/navigation/main_navigation.dart';
import 'package:flutter/widgets.dart';

class NewNotesScreenVM extends ChangeNotifier{

  void saveNotes (BuildContext context ){
    Navigator.pushNamed(context, MainNavigationRouteNames.notesScreenDI);

  }
  String newNotes = '';





}
