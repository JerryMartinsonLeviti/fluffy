import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cart_adding_productto_event_needstooltip_model.dart';
export 'cart_adding_productto_event_needstooltip_model.dart';

class CartAddingProducttoEventNeedstooltipWidget extends StatefulWidget {
  const CartAddingProducttoEventNeedstooltipWidget({super.key});

  @override
  State<CartAddingProducttoEventNeedstooltipWidget> createState() =>
      _CartAddingProducttoEventNeedstooltipWidgetState();
}

class _CartAddingProducttoEventNeedstooltipWidgetState
    extends State<CartAddingProducttoEventNeedstooltipWidget> {
  late CartAddingProducttoEventNeedstooltipModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => CartAddingProducttoEventNeedstooltipModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
