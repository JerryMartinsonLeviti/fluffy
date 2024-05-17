import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import 'dart:math';
import 'splash_page_widget.dart' show SplashPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
