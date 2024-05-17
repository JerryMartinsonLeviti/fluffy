import '/components/icon_calendar/icon_calendar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vendor_sidebar_nav_schedules_component_widget.dart'
    show VendorSidebarNavSchedulesComponentWidget;
import 'package:flutter/material.dart';

class VendorSidebarNavSchedulesComponentModel
    extends FlutterFlowModel<VendorSidebarNavSchedulesComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IconCalendar component.
  late IconCalendarModel iconCalendarModel;

  @override
  void initState(BuildContext context) {
    iconCalendarModel = createModel(context, () => IconCalendarModel());
  }

  @override
  void dispose() {
    iconCalendarModel.dispose();
  }
}
