// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PackageLineStruct extends BaseStruct {
  PackageLineStruct({
    String? packageName,
    int? qty,
    int? pricePer,
    int? extTotal,
    String? pkgType,
  })  : _packageName = packageName,
        _qty = qty,
        _pricePer = pricePer,
        _extTotal = extTotal,
        _pkgType = pkgType;

  // "package_name" field.
  String? _packageName;
  String get packageName => _packageName ?? '';
  set packageName(String? val) => _packageName = val;
  bool hasPackageName() => _packageName != null;

  // "qty" field.
  int? _qty;
  int get qty => _qty ?? 0;
  set qty(int? val) => _qty = val;
  void incrementQty(int amount) => _qty = qty + amount;
  bool hasQty() => _qty != null;

  // "price_per" field.
  int? _pricePer;
  int get pricePer => _pricePer ?? 0;
  set pricePer(int? val) => _pricePer = val;
  void incrementPricePer(int amount) => _pricePer = pricePer + amount;
  bool hasPricePer() => _pricePer != null;

  // "ext_total" field.
  int? _extTotal;
  int get extTotal => _extTotal ?? 0;
  set extTotal(int? val) => _extTotal = val;
  void incrementExtTotal(int amount) => _extTotal = extTotal + amount;
  bool hasExtTotal() => _extTotal != null;

  // "pkg_type" field.
  String? _pkgType;
  String get pkgType => _pkgType ?? '';
  set pkgType(String? val) => _pkgType = val;
  bool hasPkgType() => _pkgType != null;

  static PackageLineStruct fromMap(Map<String, dynamic> data) =>
      PackageLineStruct(
        packageName: data['package_name'] as String?,
        qty: castToType<int>(data['qty']),
        pricePer: castToType<int>(data['price_per']),
        extTotal: castToType<int>(data['ext_total']),
        pkgType: data['pkg_type'] as String?,
      );

  static PackageLineStruct? maybeFromMap(dynamic data) => data is Map
      ? PackageLineStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'package_name': _packageName,
        'qty': _qty,
        'price_per': _pricePer,
        'ext_total': _extTotal,
        'pkg_type': _pkgType,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'package_name': serializeParam(
          _packageName,
          ParamType.String,
        ),
        'qty': serializeParam(
          _qty,
          ParamType.int,
        ),
        'price_per': serializeParam(
          _pricePer,
          ParamType.int,
        ),
        'ext_total': serializeParam(
          _extTotal,
          ParamType.int,
        ),
        'pkg_type': serializeParam(
          _pkgType,
          ParamType.String,
        ),
      }.withoutNulls;

  static PackageLineStruct fromSerializableMap(Map<String, dynamic> data) =>
      PackageLineStruct(
        packageName: deserializeParam(
          data['package_name'],
          ParamType.String,
          false,
        ),
        qty: deserializeParam(
          data['qty'],
          ParamType.int,
          false,
        ),
        pricePer: deserializeParam(
          data['price_per'],
          ParamType.int,
          false,
        ),
        extTotal: deserializeParam(
          data['ext_total'],
          ParamType.int,
          false,
        ),
        pkgType: deserializeParam(
          data['pkg_type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PackageLineStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PackageLineStruct &&
        packageName == other.packageName &&
        qty == other.qty &&
        pricePer == other.pricePer &&
        extTotal == other.extTotal &&
        pkgType == other.pkgType;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([packageName, qty, pricePer, extTotal, pkgType]);
}

PackageLineStruct createPackageLineStruct({
  String? packageName,
  int? qty,
  int? pricePer,
  int? extTotal,
  String? pkgType,
}) =>
    PackageLineStruct(
      packageName: packageName,
      qty: qty,
      pricePer: pricePer,
      extTotal: extTotal,
      pkgType: pkgType,
    );
