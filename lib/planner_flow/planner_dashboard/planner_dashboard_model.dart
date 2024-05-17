import '/backend/supabase/supabase.dart';
import '/components/icon_manage_events/icon_manage_events_widget.dart';
import '/components/icon_requestto_book_plane/icon_requestto_book_plane_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import 'dart:math';
import 'planner_dashboard_widget.dart' show PlannerDashboardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlannerDashboardModel extends FlutterFlowModel<PlannerDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for IconManageEvents component.
  late IconManageEventsModel iconManageEventsModel;
  // Stores action output result for [Backend Call - Query Rows] action in Column widget.
  List<PlannersRow>? plannerRows;
  // Stores action output result for [Backend Call - Query Rows] action in Column widget.
  List<UserInfosRow>? userinfoRows;
  // Model for IconRequesttoBookPlane component.
  late IconRequesttoBookPlaneModel iconRequesttoBookPlaneModel;
  // Model for PlannerAppBarComponent component.
  late PlannerAppBarComponentModel plannerAppBarComponentModel;

  @override
  void initState(BuildContext context) {
    iconManageEventsModel = createModel(context, () => IconManageEventsModel());
    iconRequesttoBookPlaneModel =
        createModel(context, () => IconRequesttoBookPlaneModel());
    plannerAppBarComponentModel =
        createModel(context, () => PlannerAppBarComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    iconManageEventsModel.dispose();
    iconRequesttoBookPlaneModel.dispose();
    plannerAppBarComponentModel.dispose();
  }
}
