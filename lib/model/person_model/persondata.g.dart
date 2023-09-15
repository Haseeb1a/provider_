// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persondata.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class persondataAdapter extends TypeAdapter<persondata> {
  @override
  final int typeId = 2;

  @override
  persondata read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return persondata(
      personname: fields[1] as String,
      personage: fields[2] as String,
      personweight: fields[3] as String,
      personheight: fields[4] as String,
      id: fields[0] as int?,
      personImage: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, persondata obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.personname)
      ..writeByte(2)
      ..write(obj.personage)
      ..writeByte(3)
      ..write(obj.personweight)
      ..writeByte(4)
      ..write(obj.personheight)
      ..writeByte(5)
      ..write(obj.personImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is persondataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
