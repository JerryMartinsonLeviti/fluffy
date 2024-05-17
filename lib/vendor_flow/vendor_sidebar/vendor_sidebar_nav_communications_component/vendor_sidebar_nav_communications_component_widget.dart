import '/components/icon_messaging/icon_messaging_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'vendor_sidebar_nav_communications_component_model.dart';
export 'vendor_sidebar_nav_communications_component_model.dart';

class VendorSidebarNavCommunicationsComponentWidget extends StatefulWidget {
  const VendorSidebarNavCommunicationsComponentWidget({super.key});

  @override
  State<VendorSidebarNavCommunicationsComponentWidget> createState() =>
      _VendorSidebarNavCommunicationsComponentWidgetState();
}

class _VendorSidebarNavCommunicationsComponentWidgetState
    extends State<VendorSidebarNavCommunicationsComponentWidget> {
  late VendorSidebarNavCommunicationsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => VendorSidebarNavCommunicationsComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          wrapWithModel(
            model: _model.iconMessagingModel,
            updateCallback: () => setState(() {}),
            child: const IconMessagingWidget(),
          ),
          Text(
            'Communications',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(const SizedBox(width: 10.0)),
      ),
    );
  }
}
