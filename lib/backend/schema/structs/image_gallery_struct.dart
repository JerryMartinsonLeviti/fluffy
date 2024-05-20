// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageGalleryStruct extends BaseStruct {
  ImageGalleryStruct({
    List<ImageListingStruct>? imageListings,
  }) : _imageListings = imageListings;

  // "ImageListings" field.
  List<ImageListingStruct>? _imageListings;
  List<ImageListingStruct> get imageListings => _imageListings ?? const [];
  set imageListings(List<ImageListingStruct>? val) => _imageListings = val;
  void updateImageListings(Function(List<ImageListingStruct>) updateFn) =>
      updateFn(_imageListings ??= []);
  bool hasImageListings() => _imageListings != null;

  static ImageGalleryStruct fromMap(Map<String, dynamic> data) =>
      ImageGalleryStruct(
        imageListings: getStructList(
          data['ImageListings'],
          ImageListingStruct.fromMap,
        ),
      );

  static ImageGalleryStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageGalleryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ImageListings': _imageListings?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ImageListings': serializeParam(
          _imageListings,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ImageGalleryStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageGalleryStruct(
        imageListings: deserializeStructParam<ImageListingStruct>(
          data['ImageListings'],
          ParamType.DataStruct,
          true,
          structBuilder: ImageListingStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ImageGalleryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ImageGalleryStruct &&
        listEquality.equals(imageListings, other.imageListings);
  }

  @override
  int get hashCode => const ListEquality().hash([imageListings]);
}

ImageGalleryStruct createImageGalleryStruct() => ImageGalleryStruct();
