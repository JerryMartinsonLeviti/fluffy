import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_messaging_model.dart';
export 'icon_messaging_model.dart';

class IconMessagingWidget extends StatefulWidget {
  const IconMessagingWidget({super.key});

  @override
  State<IconMessagingWidget> createState() => _IconMessagingWidgetState();
}

class _IconMessagingWidgetState extends State<IconMessagingWidget> {
  late IconMessagingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconMessagingModel());

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
      Icons.message_outlined,
      color: FlutterFlowTheme.of(context).accent1,
      size: 58.0,
    );
  }
}
