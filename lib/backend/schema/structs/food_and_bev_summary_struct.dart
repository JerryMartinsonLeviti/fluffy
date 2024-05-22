// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodAndBevSummaryStruct extends BaseStruct {
  FoodAndBevSummaryStruct({
    List<FnbItemLineStruct>? fnbLines,
    int? fnbSum,
    bool? fnbIsMet,
  })  : _fnbLines = fnbLines,
        _fnbSum = fnbSum,
        _fnbIsMet = fnbIsMet;

  // "fnb_lines" field.
  List<FnbItemLineStruct>? _fnbLines;
  List<FnbItemLineStruct> get fnbLines => _fnbLines ?? const [];
  set fnbLines(List<FnbItemLineStruct>? val) => _fnbLines = val;
  void updateFnbLines(Function(List<FnbItemLineStruct>) updateFn) =>
      updateFn(_fnbLines ??= []);
  bool hasFnbLines() => _fnbLines != null;

  // "fnb_sum" field.
  int? _fnbSum;
  int get fnbSum => _fnbSum ?? 0;
  set fnbSum(int? val) => _fnbSum = val;
  void incrementFnbSum(int amount) => _fnbSum = fnbSum + amount;
  bool hasFnbSum() => _fnbSum != null;

  // "fnb_is_met" field.
  bool? _fnbIsMet;
  bool get fnbIsMet => _fnbIsMet ?? false;
  set fnbIsMet(bool? val) => _fnbIsMet = val;
  bool hasFnbIsMet() => _fnbIsMet != null;

  static FoodAndBevSummaryStruct fromMap(Map<String, dynamic> data) =>
      FoodAndBevSummaryStruct(
        fnbLines: getStructList(
          data['fnb_lines'],
          FnbItemLineStruct.fromMap,
        ),
        fnbSum: castToType<int>(data['fnb_sum']),
        fnbIsMet: data['fnb_is_met'] as bool?,
      );

  static FoodAndBevSummaryStruct? maybeFromMap(dynamic data) => data is Map
      ? FoodAndBevSummaryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fnb_lines': _fnbLines?.map((e) => e.toMap()).toList(),
        'fnb_sum': _fnbSum,
        'fnb_is_met': _fnbIsMet,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fnb_lines': serializeParam(
          _fnbLines,
          ParamType.DataStruct,
          true,
        ),
        'fnb_sum': serializeParam(
          _fnbSum,
          ParamType.int,
        ),
        'fnb_is_met': serializeParam(
          _fnbIsMet,
          ParamType.bool,
        ),
      }.withoutNulls;

  static FoodAndBevSummaryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FoodAndBevSummaryStruct(
        fnbLines: deserializeStructParam<FnbItemLineStruct>(
          data['fnb_lines'],
          ParamType.DataStruct,
          true,
          structBuilder: FnbItemLineStruct.fromSerializableMap,
        ),
        fnbSum: deserializeParam(
          data['fnb_sum'],
          ParamType.int,
          false,
        ),
        fnbIsMet: deserializeParam(
          data['fnb_is_met'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'FoodAndBevSummaryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FoodAndBevSummaryStruct &&
        listEquality.equals(fnbLines, other.fnbLines) &&
        fnbSum == other.fnbSum &&
        fnbIsMet == other.fnbIsMet;
  }

  @override
  int get hashCode => const ListEquality().hash([fnbLines, fnbSum, fnbIsMet]);
}

FoodAndBevSummaryStruct createFoodAndBevSummaryStruct({
  int? fnbSum,
  bool? fnbIsMet,
}) =>
    FoodAndBevSummaryStruct(
      fnbSum: fnbSum,
      fnbIsMet: fnbIsMet,
    );
