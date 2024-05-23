
import 'package:baby/ui/navigation/main_navigation.dart';
import 'package:flutter/widgets.dart';

class NotesScreenVM extends ChangeNotifier{

  void newNotes(BuildContext context){
    Navigator.pushNamed(context, MainNavigationRouteNames.newNoteScreenDI);
  }

}