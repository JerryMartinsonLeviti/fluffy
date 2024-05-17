import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'product_detail_page_options_language_model.dart';
export 'product_detail_page_options_language_model.dart';

class ProductDetailPageOptionsLanguageWidget extends StatefulWidget {
  const ProductDetailPageOptionsLanguageWidget({super.key});

  @override
  State<ProductDetailPageOptionsLanguageWidget> createState() =>
      _ProductDetailPageOptionsLanguageWidgetState();
}

class _ProductDetailPageOptionsLanguageWidgetState
    extends State<ProductDetailPageOptionsLanguageWidget> {
  late ProductDetailPageOptionsLanguageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => ProductDetailPageOptionsLanguageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Please select your preferred event options below. Event options‚ such as event spaces and packages are subject to availability and seasonality. To view all price details‚ please select “Show All-In Fees & Costs” in our AI Price Predictor.',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).primary,
                  letterSpacing: 0.0,
                  fontStyle: FontStyle.italic,
                ),
          ),
        ],
      ),
    );
  }
}
