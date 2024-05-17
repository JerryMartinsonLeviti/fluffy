import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'icon_manage_events_model.dart';
export 'icon_manage_events_model.dart';

class IconManageEventsWidget extends StatefulWidget {
  const IconManageEventsWidget({super.key});

  @override
  State<IconManageEventsWidget> createState() => _IconManageEventsWidgetState();
}

class _IconManageEventsWidgetState extends State<IconManageEventsWidget> {
  late IconManageEventsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconManageEventsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Icon(
        Icons.manage_history_rounded,
        color: FlutterFlowTheme.of(context).primary,
        size: 58.0,
      ),
    );
  }
}
