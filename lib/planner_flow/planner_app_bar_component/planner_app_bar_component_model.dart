import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'planner_app_bar_component_widget.dart'
    show PlannerAppBarComponentWidget;
import 'package:flutter/material.dart';

class PlannerAppBarComponentModel
    extends FlutterFlowModel<PlannerAppBarComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<PlannersRow>? plannerRows;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<UserInfosRow>? userInfoRows;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
