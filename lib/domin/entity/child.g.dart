// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChildAdapter extends TypeAdapter<Child> {
  @override
  final int typeId = 3;

  @override
  Child read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Child(
      nameChild: fields[0] as String,
      dataChild: fields[1] as String,
      genderChild: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Child obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.nameChild)
      ..writeByte(1)
      ..write(obj.dataChild)
      ..writeByte(2)
      ..write(obj.genderChild);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChildAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
