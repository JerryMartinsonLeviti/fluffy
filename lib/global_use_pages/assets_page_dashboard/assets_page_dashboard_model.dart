import '/flutter_flow/flutter_flow_util.dart';
import 'assets_page_dashboard_widget.dart' show AssetsPageDashboardWidget;
import 'package:flutter/material.dart';

class AssetsPageDashboardModel
    extends FlutterFlowModel<AssetsPageDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
