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
  })  : _taxRate = taxRate,
        _gratuityRate = gratuityRate,
        _platformFeeTake = platformFeeTake,
        _processingFee = processingFee;

  // "tax_rate" field.
  double? _taxRate;
  double get taxRate => _taxRate ?? 0.0;
  set taxRate(double? val) => _taxRate = val;
  void incrementTaxRate(double amount) => _taxRate = taxRate + amount;
  bool hasTaxRate() => _taxRate != null;

  // "gratuity_rate" field.
  double? _gratuityRate;
  double get gratuityRate => _gratuityRate ?? 0.0;
  set gratuityRate(double? val) => _gratuityRate = val;
  void incrementGratuityRate(double amount) =>
      _gratuityRate = gratuityRate + amount;
  bool hasGratuityRate() => _gratuityRate != null;

  // "platform_fee_take" field.
  double? _platformFeeTake;
  double get platformFeeTake => _platformFeeTake ?? 0.0;
  set platformFeeTake(double? val) => _platformFeeTake = val;
  void incrementPlatformFeeTake(double amount) =>
      _platformFeeTake = platformFeeTake + amount;
  bool hasPlatformFeeTake() => _platformFeeTake != null;

  // "processing_fee" field.
  double? _processingFee;
  double get processingFee => _processingFee ?? 0.0;
  set processingFee(double? val) => _processingFee = val;
  void incrementProcessingFee(double amount) =>
      _processingFee = processingFee + amount;
  bool hasProcessingFee() => _processingFee != null;

  static TaxesAndFeesSummaryStruct fromMap(Map<String, dynamic> data) =>
      TaxesAndFeesSummaryStruct(
        taxRate: castToType<double>(data['tax_rate']),
        gratuityRate: castToType<double>(data['gratuity_rate']),
        platformFeeTake: castToType<double>(data['platform_fee_take']),
        processingFee: castToType<double>(data['processing_fee']),
      );

  static TaxesAndFeesSummaryStruct? maybeFromMap(dynamic data) => data is Map
      ? TaxesAndFeesSummaryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tax_rate': _taxRate,
        'gratuity_rate': _gratuityRate,
        'platform_fee_take': _platformFeeTake,
        'processing_fee': _processingFee,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tax_rate': serializeParam(
          _taxRate,
          ParamType.double,
        ),
        'gratuity_rate': serializeParam(
          _gratuityRate,
          ParamType.double,
        ),
        'platform_fee_take': serializeParam(
          _platformFeeTake,
          ParamType.double,
        ),
        'processing_fee': serializeParam(
          _processingFee,
          ParamType.double,
        ),
      }.withoutNulls;

  static TaxesAndFeesSummaryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TaxesAndFeesSummaryStruct(
        taxRate: deserializeParam(
          data['tax_rate'],
          ParamType.double,
          false,
        ),
        gratuityRate: deserializeParam(
          data['gratuity_rate'],
          ParamType.double,
          false,
        ),
        platformFeeTake: deserializeParam(
          data['platform_fee_take'],
          ParamType.double,
          false,
        ),
        processingFee: deserializeParam(
          data['processing_fee'],
          ParamType.double,
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
        processingFee == other.processingFee;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([taxRate, gratuityRate, platformFeeTake, processingFee]);
}

TaxesAndFeesSummaryStruct createTaxesAndFeesSummaryStruct({
  double? taxRate,
  double? gratuityRate,
  double? platformFeeTake,
  double? processingFee,
}) =>
    TaxesAndFeesSummaryStruct(
      taxRate: taxRate,
      gratuityRate: gratuityRate,
      platformFeeTake: platformFeeTake,
      processingFee: processingFee,
    );
