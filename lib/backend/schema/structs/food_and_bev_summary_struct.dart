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
    int? netFnbAmount,
  })  : _fnbLines = fnbLines,
        _fnbSum = fnbSum,
        _fnbIsMet = fnbIsMet,
        _netFnbAmount = netFnbAmount;

  // "fnbLines" field.
  List<FnbItemLineStruct>? _fnbLines;
  List<FnbItemLineStruct> get fnbLines => _fnbLines ?? const [];
  set fnbLines(List<FnbItemLineStruct>? val) => _fnbLines = val;
  void updateFnbLines(Function(List<FnbItemLineStruct>) updateFn) =>
      updateFn(_fnbLines ??= []);
  bool hasFnbLines() => _fnbLines != null;

  // "fnbSum" field.
  int? _fnbSum;
  int get fnbSum => _fnbSum ?? 0;
  set fnbSum(int? val) => _fnbSum = val;
  void incrementFnbSum(int amount) => _fnbSum = fnbSum + amount;
  bool hasFnbSum() => _fnbSum != null;

  // "fnbIsMet" field.
  bool? _fnbIsMet;
  bool get fnbIsMet => _fnbIsMet ?? false;
  set fnbIsMet(bool? val) => _fnbIsMet = val;
  bool hasFnbIsMet() => _fnbIsMet != null;

  // "netFnbAmount" field.
  int? _netFnbAmount;
  int get netFnbAmount => _netFnbAmount ?? 0;
  set netFnbAmount(int? val) => _netFnbAmount = val;
  void incrementNetFnbAmount(int amount) =>
      _netFnbAmount = netFnbAmount + amount;
  bool hasNetFnbAmount() => _netFnbAmount != null;

  static FoodAndBevSummaryStruct fromMap(Map<String, dynamic> data) =>
      FoodAndBevSummaryStruct(
        fnbLines: getStructList(
          data['fnbLines'],
          FnbItemLineStruct.fromMap,
        ),
        fnbSum: castToType<int>(data['fnbSum']),
        fnbIsMet: data['fnbIsMet'] as bool?,
        netFnbAmount: castToType<int>(data['netFnbAmount']),
      );

  static FoodAndBevSummaryStruct? maybeFromMap(dynamic data) => data is Map
      ? FoodAndBevSummaryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fnbLines': _fnbLines?.map((e) => e.toMap()).toList(),
        'fnbSum': _fnbSum,
        'fnbIsMet': _fnbIsMet,
        'netFnbAmount': _netFnbAmount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fnbLines': serializeParam(
          _fnbLines,
          ParamType.DataStruct,
          true,
        ),
        'fnbSum': serializeParam(
          _fnbSum,
          ParamType.int,
        ),
        'fnbIsMet': serializeParam(
          _fnbIsMet,
          ParamType.bool,
        ),
        'netFnbAmount': serializeParam(
          _netFnbAmount,
          ParamType.int,
        ),
      }.withoutNulls;

  static FoodAndBevSummaryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FoodAndBevSummaryStruct(
        fnbLines: deserializeStructParam<FnbItemLineStruct>(
          data['fnbLines'],
          ParamType.DataStruct,
          true,
          structBuilder: FnbItemLineStruct.fromSerializableMap,
        ),
        fnbSum: deserializeParam(
          data['fnbSum'],
          ParamType.int,
          false,
        ),
        fnbIsMet: deserializeParam(
          data['fnbIsMet'],
          ParamType.bool,
          false,
        ),
        netFnbAmount: deserializeParam(
          data['netFnbAmount'],
          ParamType.int,
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
        fnbIsMet == other.fnbIsMet &&
        netFnbAmount == other.netFnbAmount;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([fnbLines, fnbSum, fnbIsMet, netFnbAmount]);
}

FoodAndBevSummaryStruct createFoodAndBevSummaryStruct({
  int? fnbSum,
  bool? fnbIsMet,
  int? netFnbAmount,
}) =>
    FoodAndBevSummaryStruct(
      fnbSum: fnbSum,
      fnbIsMet: fnbIsMet,
      netFnbAmount: netFnbAmount,
    );
