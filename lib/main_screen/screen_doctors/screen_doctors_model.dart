
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../../domin/entity/doctors.dart';


class ScreenDoctorsModel extends ChangeNotifier {
  var nameDoctors = '';
  List<Doctors> _listDoctors = [];

  List<Doctors> get listDoctors => _listDoctors.toList();

  ScreenDoctorsModel() {

  }

  void saveDoctors(BuildContext context) async {
    if (nameDoctors.isEmpty) return;
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter((DoctorsAdapter()));
    }
    final box = await Hive.openBox<Doctors>('doctors_box');
    final doctors = Doctors(addDoctors: nameDoctors);
    box.add(doctors);
    Navigator.pop(context);

    void deleteDoctors(int doctorsIndex) async {
      if (!Hive.isAdapterRegistered(2)) {
        Hive.registerAdapter(DoctorsAdapter());
      }
      final box = await Hive.openBox<Doctors>('doctors_box');
      await box.deleteAt(doctorsIndex);
    }

    void _setup() async {
      if (!Hive.isAdapterRegistered(2)) {
        Hive.registerAdapter((DoctorsAdapter()));
      }
      final box = await Hive.openBox<Doctors>('doctors_box');
      _listDoctors = box.values.toList();
      notifyListeners();
    }
  }
}
class ScreenDoctorsModelProvider extends InheritedNotifier {
  final ScreenDoctorsModel model;

  const ScreenDoctorsModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child, notifier: model);

  static ScreenDoctorsModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ScreenDoctorsModelProvider>();
  }

  static ScreenDoctorsModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<ScreenDoctorsModelProvider>()
        ?.widget;
    return widget is ScreenDoctorsModelProvider ? widget : null;
  }
}
