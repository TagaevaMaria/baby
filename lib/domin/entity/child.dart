import 'package:hive/hive.dart';

part 'child.g.dart';

@HiveType(typeId: 3)
class Child {
  @HiveField(0)
  String nameChild;

  @HiveField(1)
  String dataChild;

  @HiveField(2)
  String genderChild;

  Child(
      {required this.nameChild,
      required this.dataChild,
      required this.genderChild});
}
