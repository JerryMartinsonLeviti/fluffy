import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import 'splash_page_widget.dart' show SplashPageWidget;
import 'package:flutter/material.dart';

class SplashPageModel extends FlutterFlowModel<SplashPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for PlannerAppBarComponent component.
  late PlannerAppBarComponentModel plannerAppBarComponentModel;

  @override
  void initState(BuildContext context) {
    plannerAppBarComponentModel =
        createModel(context, () => PlannerAppBarComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    plannerAppBarComponentModel.dispose();
  }
}
