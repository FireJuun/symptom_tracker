// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'lab.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ModelCBC _$ModelCBCFromJson(Map<String, dynamic> json) {
  return _ModelCBC.fromJson(json);
}

class _$ModelCBCTearOff {
  const _$ModelCBCTearOff();

  _ModelCBC call(double wbc, double hb, double hct, int plt) {
    return _ModelCBC(
      wbc,
      hb,
      hct,
      plt,
    );
  }
}

// ignore: unused_element
const $ModelCBC = _$ModelCBCTearOff();

mixin _$ModelCBC {
  double get wbc;
  double get hb;
  double get hct;
  int get plt;

  Map<String, dynamic> toJson();
  $ModelCBCCopyWith<ModelCBC> get copyWith;
}

abstract class $ModelCBCCopyWith<$Res> {
  factory $ModelCBCCopyWith(ModelCBC value, $Res Function(ModelCBC) then) =
      _$ModelCBCCopyWithImpl<$Res>;
  $Res call({double wbc, double hb, double hct, int plt});
}

class _$ModelCBCCopyWithImpl<$Res> implements $ModelCBCCopyWith<$Res> {
  _$ModelCBCCopyWithImpl(this._value, this._then);

  final ModelCBC _value;
  // ignore: unused_field
  final $Res Function(ModelCBC) _then;

  @override
  $Res call({
    Object wbc = freezed,
    Object hb = freezed,
    Object hct = freezed,
    Object plt = freezed,
  }) {
    return _then(_value.copyWith(
      wbc: wbc == freezed ? _value.wbc : wbc as double,
      hb: hb == freezed ? _value.hb : hb as double,
      hct: hct == freezed ? _value.hct : hct as double,
      plt: plt == freezed ? _value.plt : plt as int,
    ));
  }
}

abstract class _$ModelCBCCopyWith<$Res> implements $ModelCBCCopyWith<$Res> {
  factory _$ModelCBCCopyWith(_ModelCBC value, $Res Function(_ModelCBC) then) =
      __$ModelCBCCopyWithImpl<$Res>;
  @override
  $Res call({double wbc, double hb, double hct, int plt});
}

class __$ModelCBCCopyWithImpl<$Res> extends _$ModelCBCCopyWithImpl<$Res>
    implements _$ModelCBCCopyWith<$Res> {
  __$ModelCBCCopyWithImpl(_ModelCBC _value, $Res Function(_ModelCBC) _then)
      : super(_value, (v) => _then(v as _ModelCBC));

  @override
  _ModelCBC get _value => super._value as _ModelCBC;

  @override
  $Res call({
    Object wbc = freezed,
    Object hb = freezed,
    Object hct = freezed,
    Object plt = freezed,
  }) {
    return _then(_ModelCBC(
      wbc == freezed ? _value.wbc : wbc as double,
      hb == freezed ? _value.hb : hb as double,
      hct == freezed ? _value.hct : hct as double,
      plt == freezed ? _value.plt : plt as int,
    ));
  }
}

@JsonSerializable()
class _$_ModelCBC implements _ModelCBC {
  const _$_ModelCBC(this.wbc, this.hb, this.hct, this.plt)
      : assert(wbc != null),
        assert(hb != null),
        assert(hct != null),
        assert(plt != null);

  factory _$_ModelCBC.fromJson(Map<String, dynamic> json) =>
      _$_$_ModelCBCFromJson(json);

  @override
  final double wbc;
  @override
  final double hb;
  @override
  final double hct;
  @override
  final int plt;

  @override
  String toString() {
    return 'ModelCBC(wbc: $wbc, hb: $hb, hct: $hct, plt: $plt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModelCBC &&
            (identical(other.wbc, wbc) ||
                const DeepCollectionEquality().equals(other.wbc, wbc)) &&
            (identical(other.hb, hb) ||
                const DeepCollectionEquality().equals(other.hb, hb)) &&
            (identical(other.hct, hct) ||
                const DeepCollectionEquality().equals(other.hct, hct)) &&
            (identical(other.plt, plt) ||
                const DeepCollectionEquality().equals(other.plt, plt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(wbc) ^
      const DeepCollectionEquality().hash(hb) ^
      const DeepCollectionEquality().hash(hct) ^
      const DeepCollectionEquality().hash(plt);

  @override
  _$ModelCBCCopyWith<_ModelCBC> get copyWith =>
      __$ModelCBCCopyWithImpl<_ModelCBC>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ModelCBCToJson(this);
  }
}

abstract class _ModelCBC implements ModelCBC {
  const factory _ModelCBC(double wbc, double hb, double hct, int plt) =
      _$_ModelCBC;

  factory _ModelCBC.fromJson(Map<String, dynamic> json) = _$_ModelCBC.fromJson;

  @override
  double get wbc;
  @override
  double get hb;
  @override
  double get hct;
  @override
  int get plt;
  @override
  _$ModelCBCCopyWith<_ModelCBC> get copyWith;
}

ModelBMP _$ModelBMPFromJson(Map<String, dynamic> json) {
  return _ModelBMP.fromJson(json);
}

class _$ModelBMPTearOff {
  const _$ModelBMPTearOff();

  _ModelBMP call(
      int na, double k, int cl, int co2, int bun, double creat, int glc) {
    return _ModelBMP(
      na,
      k,
      cl,
      co2,
      bun,
      creat,
      glc,
    );
  }
}

// ignore: unused_element
const $ModelBMP = _$ModelBMPTearOff();

mixin _$ModelBMP {
  int get na;
  double get k;
  int get cl;
  int get co2;
  int get bun;
  double get creat;
  int get glc;

  Map<String, dynamic> toJson();
  $ModelBMPCopyWith<ModelBMP> get copyWith;
}

abstract class $ModelBMPCopyWith<$Res> {
  factory $ModelBMPCopyWith(ModelBMP value, $Res Function(ModelBMP) then) =
      _$ModelBMPCopyWithImpl<$Res>;
  $Res call(
      {int na, double k, int cl, int co2, int bun, double creat, int glc});
}

class _$ModelBMPCopyWithImpl<$Res> implements $ModelBMPCopyWith<$Res> {
  _$ModelBMPCopyWithImpl(this._value, this._then);

  final ModelBMP _value;
  // ignore: unused_field
  final $Res Function(ModelBMP) _then;

  @override
  $Res call({
    Object na = freezed,
    Object k = freezed,
    Object cl = freezed,
    Object co2 = freezed,
    Object bun = freezed,
    Object creat = freezed,
    Object glc = freezed,
  }) {
    return _then(_value.copyWith(
      na: na == freezed ? _value.na : na as int,
      k: k == freezed ? _value.k : k as double,
      cl: cl == freezed ? _value.cl : cl as int,
      co2: co2 == freezed ? _value.co2 : co2 as int,
      bun: bun == freezed ? _value.bun : bun as int,
      creat: creat == freezed ? _value.creat : creat as double,
      glc: glc == freezed ? _value.glc : glc as int,
    ));
  }
}

abstract class _$ModelBMPCopyWith<$Res> implements $ModelBMPCopyWith<$Res> {
  factory _$ModelBMPCopyWith(_ModelBMP value, $Res Function(_ModelBMP) then) =
      __$ModelBMPCopyWithImpl<$Res>;
  @override
  $Res call(
      {int na, double k, int cl, int co2, int bun, double creat, int glc});
}

class __$ModelBMPCopyWithImpl<$Res> extends _$ModelBMPCopyWithImpl<$Res>
    implements _$ModelBMPCopyWith<$Res> {
  __$ModelBMPCopyWithImpl(_ModelBMP _value, $Res Function(_ModelBMP) _then)
      : super(_value, (v) => _then(v as _ModelBMP));

  @override
  _ModelBMP get _value => super._value as _ModelBMP;

  @override
  $Res call({
    Object na = freezed,
    Object k = freezed,
    Object cl = freezed,
    Object co2 = freezed,
    Object bun = freezed,
    Object creat = freezed,
    Object glc = freezed,
  }) {
    return _then(_ModelBMP(
      na == freezed ? _value.na : na as int,
      k == freezed ? _value.k : k as double,
      cl == freezed ? _value.cl : cl as int,
      co2 == freezed ? _value.co2 : co2 as int,
      bun == freezed ? _value.bun : bun as int,
      creat == freezed ? _value.creat : creat as double,
      glc == freezed ? _value.glc : glc as int,
    ));
  }
}

@JsonSerializable()
class _$_ModelBMP implements _ModelBMP {
  const _$_ModelBMP(
      this.na, this.k, this.cl, this.co2, this.bun, this.creat, this.glc)
      : assert(na != null),
        assert(k != null),
        assert(cl != null),
        assert(co2 != null),
        assert(bun != null),
        assert(creat != null),
        assert(glc != null);

  factory _$_ModelBMP.fromJson(Map<String, dynamic> json) =>
      _$_$_ModelBMPFromJson(json);

  @override
  final int na;
  @override
  final double k;
  @override
  final int cl;
  @override
  final int co2;
  @override
  final int bun;
  @override
  final double creat;
  @override
  final int glc;

  @override
  String toString() {
    return 'ModelBMP(na: $na, k: $k, cl: $cl, co2: $co2, bun: $bun, creat: $creat, glc: $glc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModelBMP &&
            (identical(other.na, na) ||
                const DeepCollectionEquality().equals(other.na, na)) &&
            (identical(other.k, k) ||
                const DeepCollectionEquality().equals(other.k, k)) &&
            (identical(other.cl, cl) ||
                const DeepCollectionEquality().equals(other.cl, cl)) &&
            (identical(other.co2, co2) ||
                const DeepCollectionEquality().equals(other.co2, co2)) &&
            (identical(other.bun, bun) ||
                const DeepCollectionEquality().equals(other.bun, bun)) &&
            (identical(other.creat, creat) ||
                const DeepCollectionEquality().equals(other.creat, creat)) &&
            (identical(other.glc, glc) ||
                const DeepCollectionEquality().equals(other.glc, glc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(na) ^
      const DeepCollectionEquality().hash(k) ^
      const DeepCollectionEquality().hash(cl) ^
      const DeepCollectionEquality().hash(co2) ^
      const DeepCollectionEquality().hash(bun) ^
      const DeepCollectionEquality().hash(creat) ^
      const DeepCollectionEquality().hash(glc);

  @override
  _$ModelBMPCopyWith<_ModelBMP> get copyWith =>
      __$ModelBMPCopyWithImpl<_ModelBMP>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ModelBMPToJson(this);
  }
}

abstract class _ModelBMP implements ModelBMP {
  const factory _ModelBMP(
          int na, double k, int cl, int co2, int bun, double creat, int glc) =
      _$_ModelBMP;

  factory _ModelBMP.fromJson(Map<String, dynamic> json) = _$_ModelBMP.fromJson;

  @override
  int get na;
  @override
  double get k;
  @override
  int get cl;
  @override
  int get co2;
  @override
  int get bun;
  @override
  double get creat;
  @override
  int get glc;
  @override
  _$ModelBMPCopyWith<_ModelBMP> get copyWith;
}
