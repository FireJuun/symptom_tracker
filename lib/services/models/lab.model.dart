import 'package:freezed_annotation/freezed_annotation.dart';

part 'lab.model.g.dart';
part 'lab.model.freezed.dart';

@freezed
abstract class ModelCBC with _$ModelCBC {
  const factory ModelCBC(double wbc, double hb, double hct, int plt) = _ModelCBC;
  factory ModelCBC.fromJson(Map<String, dynamic> json) => _$ModelCBCFromJson(json);
}

@freezed
abstract class ModelBMP with _$ModelBMP {
  const factory ModelBMP(int na, double k, int cl, int co2, int bun, double creat, int glc) = _ModelBMP;
  factory ModelBMP.fromJson(Map<String, dynamic> json) => _$ModelBMPFromJson(json);
}
