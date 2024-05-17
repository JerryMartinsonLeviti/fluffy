import '/components/icon_manage_events/icon_manage_events_widget.dart';
import '/components/icon_requestto_book_plane/icon_requestto_book_plane_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home_page/dev_mode/dev_p_k_selection/dev_p_k_selection_widget.dart';
import 'liaison_dashboard_widget.dart' show LiaisonDashboardWidget;
import 'package:flutter/material.dart';

class LiaisonDashboardModel extends FlutterFlowModel<LiaisonDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DevPKSelection component.
  late DevPKSelectionModel devPKSelectionModel;
  // Model for IconManageEvents component.
  late IconManageEventsModel iconManageEventsModel;
  // Model for IconRequesttoBookPlane component.
  late IconRequesttoBookPlaneModel iconRequesttoBookPlaneModel;

  @override
  void initState(BuildContext context) {
    devPKSelectionModel = createModel(context, () => DevPKSelectionModel());
    iconManageEventsModel = createModel(context, () => IconManageEventsModel());
    iconRequesttoBookPlaneModel =
        createModel(context, () => IconRequesttoBookPlaneModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    devPKSelectionModel.dispose();
    iconManageEventsModel.dispose();
    iconRequesttoBookPlaneModel.dispose();
  }
}
