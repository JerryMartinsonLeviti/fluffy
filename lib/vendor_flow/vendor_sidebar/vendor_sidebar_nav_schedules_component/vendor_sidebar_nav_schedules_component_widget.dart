import '/components/icon_calendar/icon_calendar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'vendor_sidebar_nav_schedules_component_model.dart';
export 'vendor_sidebar_nav_schedules_component_model.dart';

class VendorSidebarNavSchedulesComponentWidget extends StatefulWidget {
  const VendorSidebarNavSchedulesComponentWidget({super.key});

  @override
  State<VendorSidebarNavSchedulesComponentWidget> createState() =>
      _VendorSidebarNavSchedulesComponentWidgetState();
}

class _VendorSidebarNavSchedulesComponentWidgetState
    extends State<VendorSidebarNavSchedulesComponentWidget> {
  late VendorSidebarNavSchedulesComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => VendorSidebarNavSchedulesComponentModel());

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
            model: _model.iconCalendarModel,
            updateCallback: () => setState(() {}),
            child: const IconCalendarWidget(),
          ),
          Text(
            'Schedules',
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
