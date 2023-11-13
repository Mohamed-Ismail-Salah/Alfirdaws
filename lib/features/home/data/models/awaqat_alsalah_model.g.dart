// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awaqat_alsalah_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AwaqatAlsalahModelAdapter extends TypeAdapter<AwaqatAlsalahModel> {
  @override
  final int typeId = 0;

  @override
  AwaqatAlsalahModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AwaqatAlsalahModel(
      fajr: fields[0] as String,
      dhuhr: fields[1] as String,
      asr: fields[2] as String,
      maghrib: fields[3] as String,
      isha: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AwaqatAlsalahModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.fajr)
      ..writeByte(1)
      ..write(obj.dhuhr)
      ..writeByte(2)
      ..write(obj.asr)
      ..writeByte(3)
      ..write(obj.maghrib)
      ..writeByte(4)
      ..write(obj.isha);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AwaqatAlsalahModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
