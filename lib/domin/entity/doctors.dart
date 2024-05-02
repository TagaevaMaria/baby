import 'package:hive/hive.dart';
part 'doctors.g.dart';

@HiveType(typeId: 2)
class Doctors {
  @HiveField(0)
  String addDoctors;

  Doctors({required this.addDoctors});
}
