import 'package:hive/hive.dart';

part 'notes.g.dart';

@HiveType(typeId: 1)
class Note {
  @HiveField(0)
  String name;
  Note({
    required this.name,
  });
}
