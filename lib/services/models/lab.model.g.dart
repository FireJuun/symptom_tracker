// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lab.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelCBC _$_$_ModelCBCFromJson(Map<String, dynamic> json) {
  return _$_ModelCBC(
    (json['wbc'] as num)?.toDouble(),
    (json['hb'] as num)?.toDouble(),
    (json['hct'] as num)?.toDouble(),
    json['plt'] as int,
  );
}

Map<String, dynamic> _$_$_ModelCBCToJson(_$_ModelCBC instance) =>
    <String, dynamic>{
      'wbc': instance.wbc,
      'hb': instance.hb,
      'hct': instance.hct,
      'plt': instance.plt,
    };

_$_ModelBMP _$_$_ModelBMPFromJson(Map<String, dynamic> json) {
  return _$_ModelBMP(
    json['na'] as int,
    (json['k'] as num)?.toDouble(),
    json['cl'] as int,
    json['co2'] as int,
    json['bun'] as int,
    (json['creat'] as num)?.toDouble(),
    json['glc'] as int,
  );
}

Map<String, dynamic> _$_$_ModelBMPToJson(_$_ModelBMP instance) =>
    <String, dynamic>{
      'na': instance.na,
      'k': instance.k,
      'cl': instance.cl,
      'co2': instance.co2,
      'bun': instance.bun,
      'creat': instance.creat,
      'glc': instance.glc,
    };
