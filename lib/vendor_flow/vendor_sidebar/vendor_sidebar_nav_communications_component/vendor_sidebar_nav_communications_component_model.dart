import '/components/icon_messaging/icon_messaging_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vendor_sidebar_nav_communications_component_widget.dart'
    show VendorSidebarNavCommunicationsComponentWidget;
import 'package:flutter/material.dart';

class VendorSidebarNavCommunicationsComponentModel
    extends FlutterFlowModel<VendorSidebarNavCommunicationsComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IconMessaging component.
  late IconMessagingModel iconMessagingModel;

  @override
  void initState(BuildContext context) {
    iconMessagingModel = createModel(context, () => IconMessagingModel());
  }

  @override
  void dispose() {
    iconMessagingModel.dispose();
  }
}
