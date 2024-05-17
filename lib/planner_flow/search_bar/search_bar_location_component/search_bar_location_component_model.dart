import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'search_bar_location_component_widget.dart'
    show SearchBarLocationComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchBarLocationComponentModel
    extends FlutterFlowModel<SearchBarLocationComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PlacePicker widget.
  var placePickerValue = FFPlace();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
