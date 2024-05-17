import '/components/icon_manage_events/icon_manage_events_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vendor_sidebar_manage_event_component_widget.dart'
    show VendorSidebarManageEventComponentWidget;
import 'package:flutter/material.dart';

class VendorSidebarManageEventComponentModel
    extends FlutterFlowModel<VendorSidebarManageEventComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IconManageEvents component.
  late IconManageEventsModel iconManageEventsModel;

  @override
  void initState(BuildContext context) {
    iconManageEventsModel = createModel(context, () => IconManageEventsModel());
  }

  @override
  void dispose() {
    iconManageEventsModel.dispose();
  }
}
