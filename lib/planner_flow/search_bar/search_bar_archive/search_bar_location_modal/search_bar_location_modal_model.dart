import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/search_bar/search_bar_location_component/search_bar_location_component_widget.dart';
import 'search_bar_location_modal_widget.dart'
    show SearchBarLocationModalWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchBarLocationModalModel
    extends FlutterFlowModel<SearchBarLocationModalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SearchBarLocationComponent component.
  late SearchBarLocationComponentModel searchBarLocationComponentModel;

  @override
  void initState(BuildContext context) {
    searchBarLocationComponentModel =
        createModel(context, () => SearchBarLocationComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarLocationComponentModel.dispose();
  }
}
