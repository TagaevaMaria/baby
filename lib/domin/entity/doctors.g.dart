// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DoctorsAdapter extends TypeAdapter<Doctors> {
  @override
  final int typeId = 2;

  @override
  Doctors read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Doctors(
      addDoctors: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Doctors obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.addDoctors);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DoctorsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
