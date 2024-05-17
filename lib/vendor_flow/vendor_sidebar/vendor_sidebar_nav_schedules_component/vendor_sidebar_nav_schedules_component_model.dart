import '/components/icon_calendar/icon_calendar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vendor_sidebar_nav_schedules_component_widget.dart'
    show VendorSidebarNavSchedulesComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
