import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'icon_calendar_model.dart';
export 'icon_calendar_model.dart';

class IconCalendarWidget extends StatefulWidget {
  const IconCalendarWidget({super.key});

  @override
  State<IconCalendarWidget> createState() => _IconCalendarWidgetState();
}

class _IconCalendarWidgetState extends State<IconCalendarWidget> {
  late IconCalendarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconCalendarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.calendar_month_rounded,
      color: FlutterFlowTheme.of(context).warning,
      size: 58.0,
    );
  }
}
