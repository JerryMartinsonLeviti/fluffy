import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_financials_model.dart';
export 'icon_financials_model.dart';

class IconFinancialsWidget extends StatefulWidget {
  const IconFinancialsWidget({super.key});

  @override
  State<IconFinancialsWidget> createState() => _IconFinancialsWidgetState();
}

class _IconFinancialsWidgetState extends State<IconFinancialsWidget> {
  late IconFinancialsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconFinancialsModel());

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
      Icons.monetization_on_outlined,
      color: FlutterFlowTheme.of(context).accent3,
      size: 58.0,
    );
  }
}
