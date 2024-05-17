import 'dart:convert';

import 'package:flutter/material.dart';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';

import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

String? serializeParam(
  dynamic param,
  ParamType paramType, [
  bool isList = false,
]) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    switch (paramType) {
      case ParamType.int:
        return param.toString();
      case ParamType.double:
        return param.toString();
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param ? 'true' : 'false';
      case ParamType.DateTime:
        return (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        return dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        return (param as LatLng).serialize();
      case ParamType.Color:
        return (param as Color).toCssString();
      case ParamType.FFPlace:
        return placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        return uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        return json.encode(param);

      case ParamType.DataStruct:
        return param is BaseStruct ? param.serialize() : null;

      case ParamType.Enum:
        return (param is Enum) ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        return null;
    }
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,
  DataStruct,
  Enum,
  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .whereType<String>()
          .map((p) => p)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case UrlAssetsRow:
            return UrlAssetsRow(data);
          case BigTableRow:
            return BigTableRow(data);
          case ProjectsRow:
            return ProjectsRow(data);
          case PackagesRow:
            return PackagesRow(data);
          case CartItemsRow:
            return CartItemsRow(data);
          case CartFunctionSpaceRow:
            return CartFunctionSpaceRow(data);
          case AvailableCountriesRow:
            return AvailableCountriesRow(data);
          case VendorsViewRow:
            return VendorsViewRow(data);
          case PlannersRow:
            return PlannersRow(data);
          case TypesRow:
            return TypesRow(data);
          case AssetCollectionsViewRow:
            return AssetCollectionsViewRow(data);
          case NoticesRow:
            return NoticesRow(data);
          case FunctionSpacesRow:
            return FunctionSpacesRow(data);
          case EventLiaisonRow:
            return EventLiaisonRow(data);
          case RestaurantLocationsRow:
            return RestaurantLocationsRow(data);
          case EventPlannerRow:
            return EventPlannerRow(data);
          case VendorsRow:
            return VendorsRow(data);
          case FinalCombinedViewRow:
            return FinalCombinedViewRow(data);
          case LiaisonRoomsViewRow:
            return LiaisonRoomsViewRow(data);
          case ProductsRow:
            return ProductsRow(data);
          case MessagesRow:
            return MessagesRow(data);
          case AddressesRow:
            return AddressesRow(data);
          case FaqAssetsRow:
            return FaqAssetsRow(data);
          case DescriptionAssetsRow:
            return DescriptionAssetsRow(data);
          case ModifierGroupsRow:
            return ModifierGroupsRow(data);
          case PostsRow:
            return PostsRow(data);
          case UserInfosRow:
            return UserInfosRow(data);
          case ModifiersRow:
            return ModifiersRow(data);
          case AvailableStatesRow:
            return AvailableStatesRow(data);
          case PricingElementsRow:
            return PricingElementsRow(data);
          case PricingVectorsRow:
            return PricingVectorsRow(data);
          case TermAssetsRow:
            return TermAssetsRow(data);
          case RoomsRow:
            return RoomsRow(data);
          case LogoAssetsRow:
            return LogoAssetsRow(data);
          case LiaisonsRow:
            return LiaisonsRow(data);
          case VenuesRow:
            return VenuesRow(data);
          case PlannersViewRow:
            return PlannersViewRow(data);
          case CartPackageRow:
            return CartPackageRow(data);
          case OrganizationsRow:
            return OrganizationsRow(data);
          case ImageAssetsRow:
            return ImageAssetsRow(data);
          case CombinedViewRow:
            return CombinedViewRow(data);
          case RmuViewRow:
            return RmuViewRow(data);
          case CartsRow:
            return CartsRow(data);
          case VendorRoomsViewRow:
            return VendorRoomsViewRow(data);
          case TasksRow:
            return TasksRow(data);
          case LiaisonsViewRow:
            return LiaisonsViewRow(data);
          case ItemsRow:
            return ItemsRow(data);
          case ItemGroupsRow:
            return ItemGroupsRow(data);
          case IndexViewRow:
            return IndexViewRow(data);
          case EventsRow:
            return EventsRow(data);
          case PlannerRoomsViewRow:
            return PlannerRoomsViewRow(data);
          case AssetCollectionsRow:
            return AssetCollectionsRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      case ParamType.Enum:
        return deserializeEnum<T>(param);

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}
