import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/planner_app_bar_component/planner_app_bar_component_widget.dart';
import 'booking_confirmed_step3_dashboard_widget.dart'
    show BookingConfirmedStep3DashboardWidget;
import 'package:flutter/material.dart';

class BookingConfirmedStep3DashboardModel
    extends FlutterFlowModel<BookingConfirmedStep3DashboardWidget> {
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
