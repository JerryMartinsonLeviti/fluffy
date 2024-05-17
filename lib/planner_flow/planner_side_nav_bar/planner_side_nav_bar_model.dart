import '/components/icon_asset_folder/icon_asset_folder_widget.dart';
import '/components/icon_calendar/icon_calendar_widget.dart';
import '/components/icon_financials/icon_financials_widget.dart';
import '/components/icon_heart/icon_heart_widget.dart';
import '/components/icon_manage_events/icon_manage_events_widget.dart';
import '/components/icon_messaging/icon_messaging_widget.dart';
import '/components/icon_requestto_book_plane/icon_requestto_book_plane_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'planner_side_nav_bar_widget.dart' show PlannerSideNavBarWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlannerSideNavBarModel extends FlutterFlowModel<PlannerSideNavBarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for IconManageEvents component.
  late IconManageEventsModel iconManageEventsModel;
  // Model for IconMessaging component.
  late IconMessagingModel iconMessagingModel;
  // Model for IconCalendar component.
  late IconCalendarModel iconCalendarModel;
  // Model for IconRequesttoBookPlane component.
  late IconRequesttoBookPlaneModel iconRequesttoBookPlaneModel;
  // Model for IconHeart component.
  late IconHeartModel iconHeartModel;
  // Model for IconFinancials component.
  late IconFinancialsModel iconFinancialsModel;
  // Model for IconAssetFolder component.
  late IconAssetFolderModel iconAssetFolderModel;

  @override
  void initState(BuildContext context) {
    iconManageEventsModel = createModel(context, () => IconManageEventsModel());
    iconMessagingModel = createModel(context, () => IconMessagingModel());
    iconCalendarModel = createModel(context, () => IconCalendarModel());
    iconRequesttoBookPlaneModel =
        createModel(context, () => IconRequesttoBookPlaneModel());
    iconHeartModel = createModel(context, () => IconHeartModel());
    iconFinancialsModel = createModel(context, () => IconFinancialsModel());
    iconAssetFolderModel = createModel(context, () => IconAssetFolderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    iconManageEventsModel.dispose();
    iconMessagingModel.dispose();
    iconCalendarModel.dispose();
    iconRequesttoBookPlaneModel.dispose();
    iconHeartModel.dispose();
    iconFinancialsModel.dispose();
    iconAssetFolderModel.dispose();
  }
}
