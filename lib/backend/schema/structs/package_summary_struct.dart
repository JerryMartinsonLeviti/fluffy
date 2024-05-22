// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PackageSummaryStruct extends BaseStruct {
  PackageSummaryStruct({
    List<PackageLineStruct>? packageLines,
    int? pkgSum,
  })  : _packageLines = packageLines,
        _pkgSum = pkgSum;

  // "package_lines" field.
  List<PackageLineStruct>? _packageLines;
  List<PackageLineStruct> get packageLines => _packageLines ?? const [];
  set packageLines(List<PackageLineStruct>? val) => _packageLines = val;
  void updatePackageLines(Function(List<PackageLineStruct>) updateFn) =>
      updateFn(_packageLines ??= []);
  bool hasPackageLines() => _packageLines != null;

  // "pkg_sum" field.
  int? _pkgSum;
  int get pkgSum => _pkgSum ?? 0;
  set pkgSum(int? val) => _pkgSum = val;
  void incrementPkgSum(int amount) => _pkgSum = pkgSum + amount;
  bool hasPkgSum() => _pkgSum != null;

  static PackageSummaryStruct fromMap(Map<String, dynamic> data) =>
      PackageSummaryStruct(
        packageLines: getStructList(
          data['package_lines'],
          PackageLineStruct.fromMap,
        ),
        pkgSum: castToType<int>(data['pkg_sum']),
      );

  static PackageSummaryStruct? maybeFromMap(dynamic data) => data is Map
      ? PackageSummaryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'package_lines': _packageLines?.map((e) => e.toMap()).toList(),
        'pkg_sum': _pkgSum,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'package_lines': serializeParam(
          _packageLines,
          ParamType.DataStruct,
          true,
        ),
        'pkg_sum': serializeParam(
          _pkgSum,
          ParamType.int,
        ),
      }.withoutNulls;

  static PackageSummaryStruct fromSerializableMap(Map<String, dynamic> data) =>
      PackageSummaryStruct(
        packageLines: deserializeStructParam<PackageLineStruct>(
          data['package_lines'],
          ParamType.DataStruct,
          true,
          structBuilder: PackageLineStruct.fromSerializableMap,
        ),
        pkgSum: deserializeParam(
          data['pkg_sum'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PackageSummaryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PackageSummaryStruct &&
        listEquality.equals(packageLines, other.packageLines) &&
        pkgSum == other.pkgSum;
  }

  @override
  int get hashCode => const ListEquality().hash([packageLines, pkgSum]);
}

PackageSummaryStruct createPackageSummaryStruct({
  int? pkgSum,
}) =>
    PackageSummaryStruct(
      pkgSum: pkgSum,
    );
