import 'package:collection/collection.dart';

enum CartStates {
  Empty,
  RfpSent,
  RfpReceived,
  RtbSent,
  Booked,
  Paid,
  Archive,
  Rfi,
}

enum UnitOfMeasure {
  Guest,
  Event,
  Each,
  Mile,
  Minute,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (CartStates):
      return CartStates.values.deserialize(value) as T?;
    case (UnitOfMeasure):
      return UnitOfMeasure.values.deserialize(value) as T?;
    default:
      return null;
  }
}
