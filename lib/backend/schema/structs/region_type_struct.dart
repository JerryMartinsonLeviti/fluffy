// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RegionTypeStruct extends BaseStruct {
  RegionTypeStruct({
    int? id,
    String? regionName,
    String? regionImage,
    List<DateTime>? choosableTimes,
  })  : _id = id,
        _regionName = regionName,
        _regionImage = regionImage,
        _choosableTimes = choosableTimes;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "region_name" field.
  String? _regionName;
  String get regionName => _regionName ?? '';
  set regionName(String? val) => _regionName = val;
  bool hasRegionName() => _regionName != null;

  // "region_image" field.
  String? _regionImage;
  String get regionImage => _regionImage ?? '';
  set regionImage(String? val) => _regionImage = val;
  bool hasRegionImage() => _regionImage != null;

  // "ChoosableTimes" field.
  List<DateTime>? _choosableTimes;
  List<DateTime> get choosableTimes => _choosableTimes ?? const [];
  set choosableTimes(List<DateTime>? val) => _choosableTimes = val;
  void updateChoosableTimes(Function(List<DateTime>) updateFn) =>
      updateFn(_choosableTimes ??= []);
  bool hasChoosableTimes() => _choosableTimes != null;

  static RegionTypeStruct fromMap(Map<String, dynamic> data) =>
      RegionTypeStruct(
        id: castToType<int>(data['id']),
        regionName: data['region_name'] as String?,
        regionImage: data['region_image'] as String?,
        choosableTimes: getDataList(data['ChoosableTimes']),
      );

  static RegionTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? RegionTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'region_name': _regionName,
        'region_image': _regionImage,
        'ChoosableTimes': _choosableTimes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'region_name': serializeParam(
          _regionName,
          ParamType.String,
        ),
        'region_image': serializeParam(
          _regionImage,
          ParamType.String,
        ),
        'ChoosableTimes': serializeParam(
          _choosableTimes,
          ParamType.DateTime,
          true,
        ),
      }.withoutNulls;

  static RegionTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      RegionTypeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        regionName: deserializeParam(
          data['region_name'],
          ParamType.String,
          false,
        ),
        regionImage: deserializeParam(
          data['region_image'],
          ParamType.String,
          false,
        ),
        choosableTimes: deserializeParam<DateTime>(
          data['ChoosableTimes'],
          ParamType.DateTime,
          true,
        ),
      );

  @override
  String toString() => 'RegionTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RegionTypeStruct &&
        id == other.id &&
        regionName == other.regionName &&
        regionImage == other.regionImage &&
        listEquality.equals(choosableTimes, other.choosableTimes);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, regionName, regionImage, choosableTimes]);
}

RegionTypeStruct createRegionTypeStruct({
  int? id,
  String? regionName,
  String? regionImage,
}) =>
    RegionTypeStruct(
      id: id,
      regionName: regionName,
      regionImage: regionImage,
    );
