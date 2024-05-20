import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'security_warning_model.dart';
export 'security_warning_model.dart';

class SecurityWarningWidget extends StatefulWidget {
  const SecurityWarningWidget({super.key});

  @override
  State<SecurityWarningWidget> createState() => _SecurityWarningWidgetState();
}

class _SecurityWarningWidgetState extends State<SecurityWarningWidget> {
  late SecurityWarningModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecurityWarningModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.security_rounded,
          color: FlutterFlowTheme.of(context).alternate,
          size: 50.0,
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            'For your safety & protection, do not transact/communicate outside of the SilverSpike platform. SilverSpike \ncannot guaranty results from \noff-platfom activity.',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                  lineHeight: 1.5,
                ),
          ),
        ),
      ],
    );
  }
}
