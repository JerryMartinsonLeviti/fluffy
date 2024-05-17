import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_card_component_model.dart';
export 'product_card_component_model.dart';

class ProductCardComponentWidget extends StatefulWidget {
  const ProductCardComponentWidget({super.key});

  @override
  State<ProductCardComponentWidget> createState() =>
      _ProductCardComponentWidgetState();
}

class _ProductCardComponentWidgetState
    extends State<ProductCardComponentWidget> {
  late ProductCardComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCardComponentModel());

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
      width: 200.0,
      height: 300.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.81, -0.72),
                child: Icon(
                  Icons.favorite_border,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 160.0,
                  height: 160.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/159/600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
              child: Text(
                'Hello World',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
              child: Text(
                'Hello World',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Text(
                  '\$196 Per Person',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
