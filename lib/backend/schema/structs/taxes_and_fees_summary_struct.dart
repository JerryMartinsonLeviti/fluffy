// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaxesAndFeesSummaryStruct extends BaseStruct {
  TaxesAndFeesSummaryStruct({
    double? taxRate,
    double? gratuityRate,
    double? platformFeeTake,
    double? processingFee,
    int? taxAmount,
    int? gratuityAmount,
    int? platformFeeAmount,
    int? processingAmount,
  })  : _taxRate = taxRate,
        _gratuityRate = gratuityRate,
        _platformFeeTake = platformFeeTake,
        _processingFee = processingFee,
        _taxAmount = taxAmount,
        _gratuityAmount = gratuityAmount,
        _platformFeeAmount = platformFeeAmount,
        _processingAmount = processingAmount;

  // "taxRate" field.
  double? _taxRate;
  double get taxRate => _taxRate ?? 0.0;
  set taxRate(double? val) => _taxRate = val;
  void incrementTaxRate(double amount) => _taxRate = taxRate + amount;
  bool hasTaxRate() => _taxRate != null;

  // "gratuityRate" field.
  double? _gratuityRate;
  double get gratuityRate => _gratuityRate ?? 0.0;
  set gratuityRate(double? val) => _gratuityRate = val;
  void incrementGratuityRate(double amount) =>
      _gratuityRate = gratuityRate + amount;
  bool hasGratuityRate() => _gratuityRate != null;

  // "platformFeeTake" field.
  double? _platformFeeTake;
  double get platformFeeTake => _platformFeeTake ?? 0.0;
  set platformFeeTake(double? val) => _platformFeeTake = val;
  void incrementPlatformFeeTake(double amount) =>
      _platformFeeTake = platformFeeTake + amount;
  bool hasPlatformFeeTake() => _platformFeeTake != null;

  // "processingFee" field.
  double? _processingFee;
  double get processingFee => _processingFee ?? 0.0;
  set processingFee(double? val) => _processingFee = val;
  void incrementProcessingFee(double amount) =>
      _processingFee = processingFee + amount;
  bool hasProcessingFee() => _processingFee != null;

  // "taxAmount" field.
  int? _taxAmount;
  int get taxAmount => _taxAmount ?? 0;
  set taxAmount(int? val) => _taxAmount = val;
  void incrementTaxAmount(int amount) => _taxAmount = taxAmount + amount;
  bool hasTaxAmount() => _taxAmount != null;

  // "gratuityAmount" field.
  int? _gratuityAmount;
  int get gratuityAmount => _gratuityAmount ?? 0;
  set gratuityAmount(int? val) => _gratuityAmount = val;
  void incrementGratuityAmount(int amount) =>
      _gratuityAmount = gratuityAmount + amount;
  bool hasGratuityAmount() => _gratuityAmount != null;

  // "platformFeeAmount" field.
  int? _platformFeeAmount;
  int get platformFeeAmount => _platformFeeAmount ?? 0;
  set platformFeeAmount(int? val) => _platformFeeAmount = val;
  void incrementPlatformFeeAmount(int amount) =>
      _platformFeeAmount = platformFeeAmount + amount;
  bool hasPlatformFeeAmount() => _platformFeeAmount != null;

  // "processingAmount" field.
  int? _processingAmount;
  int get processingAmount => _processingAmount ?? 0;
  set processingAmount(int? val) => _processingAmount = val;
  void incrementProcessingAmount(int amount) =>
      _processingAmount = processingAmount + amount;
  bool hasProcessingAmount() => _processingAmount != null;

  static TaxesAndFeesSummaryStruct fromMap(Map<String, dynamic> data) =>
      TaxesAndFeesSummaryStruct(
        taxRate: castToType<double>(data['taxRate']),
        gratuityRate: castToType<double>(data['gratuityRate']),
        platformFeeTake: castToType<double>(data['platformFeeTake']),
        processingFee: castToType<double>(data['processingFee']),
        taxAmount: castToType<int>(data['taxAmount']),
        gratuityAmount: castToType<int>(data['gratuityAmount']),
        platformFeeAmount: castToType<int>(data['platformFeeAmount']),
        processingAmount: castToType<int>(data['processingAmount']),
      );

  static TaxesAndFeesSummaryStruct? maybeFromMap(dynamic data) => data is Map
      ? TaxesAndFeesSummaryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'taxRate': _taxRate,
        'gratuityRate': _gratuityRate,
        'platformFeeTake': _platformFeeTake,
        'processingFee': _processingFee,
        'taxAmount': _taxAmount,
        'gratuityAmount': _gratuityAmount,
        'platformFeeAmount': _platformFeeAmount,
        'processingAmount': _processingAmount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'taxRate': serializeParam(
          _taxRate,
          ParamType.double,
        ),
        'gratuityRate': serializeParam(
          _gratuityRate,
          ParamType.double,
        ),
        'platformFeeTake': serializeParam(
          _platformFeeTake,
          ParamType.double,
        ),
        'processingFee': serializeParam(
          _processingFee,
          ParamType.double,
        ),
        'taxAmount': serializeParam(
          _taxAmount,
          ParamType.int,
        ),
        'gratuityAmount': serializeParam(
          _gratuityAmount,
          ParamType.int,
        ),
        'platformFeeAmount': serializeParam(
          _platformFeeAmount,
          ParamType.int,
        ),
        'processingAmount': serializeParam(
          _processingAmount,
          ParamType.int,
        ),
      }.withoutNulls;

  static TaxesAndFeesSummaryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TaxesAndFeesSummaryStruct(
        taxRate: deserializeParam(
          data['taxRate'],
          ParamType.double,
          false,
        ),
        gratuityRate: deserializeParam(
          data['gratuityRate'],
          ParamType.double,
          false,
        ),
        platformFeeTake: deserializeParam(
          data['platformFeeTake'],
          ParamType.double,
          false,
        ),
        processingFee: deserializeParam(
          data['processingFee'],
          ParamType.double,
          false,
        ),
        taxAmount: deserializeParam(
          data['taxAmount'],
          ParamType.int,
          false,
        ),
        gratuityAmount: deserializeParam(
          data['gratuityAmount'],
          ParamType.int,
          false,
        ),
        platformFeeAmount: deserializeParam(
          data['platformFeeAmount'],
          ParamType.int,
          false,
        ),
        processingAmount: deserializeParam(
          data['processingAmount'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TaxesAndFeesSummaryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TaxesAndFeesSummaryStruct &&
        taxRate == other.taxRate &&
        gratuityRate == other.gratuityRate &&
        platformFeeTake == other.platformFeeTake &&
        processingFee == other.processingFee &&
        taxAmount == other.taxAmount &&
        gratuityAmount == other.gratuityAmount &&
        platformFeeAmount == other.platformFeeAmount &&
        processingAmount == other.processingAmount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        taxRate,
        gratuityRate,
        platformFeeTake,
        processingFee,
        taxAmount,
        gratuityAmount,
        platformFeeAmount,
        processingAmount
      ]);
}

TaxesAndFeesSummaryStruct createTaxesAndFeesSummaryStruct({
  double? taxRate,
  double? gratuityRate,
  double? platformFeeTake,
  double? processingFee,
  int? taxAmount,
  int? gratuityAmount,
  int? platformFeeAmount,
  int? processingAmount,
}) =>
    TaxesAndFeesSummaryStruct(
      taxRate: taxRate,
      gratuityRate: gratuityRate,
      platformFeeTake: platformFeeTake,
      processingFee: processingFee,
      taxAmount: taxAmount,
      gratuityAmount: gratuityAmount,
      platformFeeAmount: platformFeeAmount,
      processingAmount: processingAmount,
    );
