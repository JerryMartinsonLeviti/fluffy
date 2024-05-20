// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageListingStruct extends BaseStruct {
  ImageListingStruct({
    String? image,
    bool? hide,
    int? order,
    int? pKImage,
    String? originalURL,
  })  : _image = image,
        _hide = hide,
        _order = order,
        _pKImage = pKImage,
        _originalURL = originalURL;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "hide" field.
  bool? _hide;
  bool get hide => _hide ?? false;
  set hide(bool? val) => _hide = val;
  bool hasHide() => _hide != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  set order(int? val) => _order = val;
  void incrementOrder(int amount) => _order = order + amount;
  bool hasOrder() => _order != null;

  // "PK_Image" field.
  int? _pKImage;
  int get pKImage => _pKImage ?? 0;
  set pKImage(int? val) => _pKImage = val;
  void incrementPKImage(int amount) => _pKImage = pKImage + amount;
  bool hasPKImage() => _pKImage != null;

  // "originalURL" field.
  String? _originalURL;
  String get originalURL => _originalURL ?? '';
  set originalURL(String? val) => _originalURL = val;
  bool hasOriginalURL() => _originalURL != null;

  static ImageListingStruct fromMap(Map<String, dynamic> data) =>
      ImageListingStruct(
        image: data['image'] as String?,
        hide: data['hide'] as bool?,
        order: castToType<int>(data['order']),
        pKImage: castToType<int>(data['PK_Image']),
        originalURL: data['originalURL'] as String?,
      );

  static ImageListingStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageListingStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'hide': _hide,
        'order': _order,
        'PK_Image': _pKImage,
        'originalURL': _originalURL,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'hide': serializeParam(
          _hide,
          ParamType.bool,
        ),
        'order': serializeParam(
          _order,
          ParamType.int,
        ),
        'PK_Image': serializeParam(
          _pKImage,
          ParamType.int,
        ),
        'originalURL': serializeParam(
          _originalURL,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageListingStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageListingStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        hide: deserializeParam(
          data['hide'],
          ParamType.bool,
          false,
        ),
        order: deserializeParam(
          data['order'],
          ParamType.int,
          false,
        ),
        pKImage: deserializeParam(
          data['PK_Image'],
          ParamType.int,
          false,
        ),
        originalURL: deserializeParam(
          data['originalURL'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageListingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageListingStruct &&
        image == other.image &&
        hide == other.hide &&
        order == other.order &&
        pKImage == other.pKImage &&
        originalURL == other.originalURL;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([image, hide, order, pKImage, originalURL]);
}

ImageListingStruct createImageListingStruct({
  String? image,
  bool? hide,
  int? order,
  int? pKImage,
  String? originalURL,
}) =>
    ImageListingStruct(
      image: image,
      hide: hide,
      order: order,
      pKImage: pKImage,
      originalURL: originalURL,
    );
