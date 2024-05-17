import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tips_ideas_component_model.dart';
export 'tips_ideas_component_model.dart';

class TipsIdeasComponentWidget extends StatefulWidget {
  const TipsIdeasComponentWidget({super.key});

  @override
  State<TipsIdeasComponentWidget> createState() =>
      _TipsIdeasComponentWidgetState();
}

class _TipsIdeasComponentWidgetState extends State<TipsIdeasComponentWidget> {
  late TipsIdeasComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TipsIdeasComponentModel());

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
      Icons.tips_and_updates_rounded,
      color: FlutterFlowTheme.of(context).secondary,
      size: 24.0,
    );
  }
}
