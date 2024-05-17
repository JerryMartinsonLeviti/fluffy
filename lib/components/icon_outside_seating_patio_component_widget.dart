import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'icon_outside_seating_patio_component_model.dart';
export 'icon_outside_seating_patio_component_model.dart';

class IconOutsideSeatingPatioComponentWidget extends StatefulWidget {
  const IconOutsideSeatingPatioComponentWidget({super.key});

  @override
  State<IconOutsideSeatingPatioComponentWidget> createState() =>
      _IconOutsideSeatingPatioComponentWidgetState();
}

class _IconOutsideSeatingPatioComponentWidgetState
    extends State<IconOutsideSeatingPatioComponentWidget> {
  late IconOutsideSeatingPatioComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => IconOutsideSeatingPatioComponentModel());

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
      Icons.deck,
      color: FlutterFlowTheme.of(context).secondary,
      size: 40.0,
    );
  }
}
