// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SiteFaqsStruct extends BaseStruct {
  SiteFaqsStruct({
    String? question,
    String? answer,
    bool? displayOnFrontPage,
  })  : _question = question,
        _answer = answer,
        _displayOnFrontPage = displayOnFrontPage;

  // "Question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;
  bool hasQuestion() => _question != null;

  // "Answer" field.
  String? _answer;
  String get answer => _answer ?? '';
  set answer(String? val) => _answer = val;
  bool hasAnswer() => _answer != null;

  // "displayOnFrontPage" field.
  bool? _displayOnFrontPage;
  bool get displayOnFrontPage => _displayOnFrontPage ?? false;
  set displayOnFrontPage(bool? val) => _displayOnFrontPage = val;
  bool hasDisplayOnFrontPage() => _displayOnFrontPage != null;

  static SiteFaqsStruct fromMap(Map<String, dynamic> data) => SiteFaqsStruct(
        question: data['Question'] as String?,
        answer: data['Answer'] as String?,
        displayOnFrontPage: data['displayOnFrontPage'] as bool?,
      );

  static SiteFaqsStruct? maybeFromMap(dynamic data) =>
      data is Map ? SiteFaqsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Question': _question,
        'Answer': _answer,
        'displayOnFrontPage': _displayOnFrontPage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Question': serializeParam(
          _question,
          ParamType.String,
        ),
        'Answer': serializeParam(
          _answer,
          ParamType.String,
        ),
        'displayOnFrontPage': serializeParam(
          _displayOnFrontPage,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SiteFaqsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SiteFaqsStruct(
        question: deserializeParam(
          data['Question'],
          ParamType.String,
          false,
        ),
        answer: deserializeParam(
          data['Answer'],
          ParamType.String,
          false,
        ),
        displayOnFrontPage: deserializeParam(
          data['displayOnFrontPage'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SiteFaqsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SiteFaqsStruct &&
        question == other.question &&
        answer == other.answer &&
        displayOnFrontPage == other.displayOnFrontPage;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([question, answer, displayOnFrontPage]);
}

SiteFaqsStruct createSiteFaqsStruct({
  String? question,
  String? answer,
  bool? displayOnFrontPage,
}) =>
    SiteFaqsStruct(
      question: question,
      answer: answer,
      displayOnFrontPage: displayOnFrontPage,
    );
