import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'region_card_copy_model.dart';
export 'region_card_copy_model.dart';

class RegionCardCopyWidget extends StatefulWidget {
  const RegionCardCopyWidget({super.key});

  @override
  State<RegionCardCopyWidget> createState() => _RegionCardCopyWidgetState();
}

class _RegionCardCopyWidgetState extends State<RegionCardCopyWidget> {
  late RegionCardCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegionCardCopyModel());

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
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Container(
              width: 120.0,
              height: 120.0,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                'https://picsum.photos/seed/964/600',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
              child: Text(
                'Bay Area',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
