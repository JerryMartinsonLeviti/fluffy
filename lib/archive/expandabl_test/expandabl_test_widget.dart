import '/archive/dropdown_expandable/dropdown_expandable_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'expandabl_test_model.dart';
export 'expandabl_test_model.dart';

class ExpandablTestWidget extends StatefulWidget {
  const ExpandablTestWidget({super.key});

  @override
  State<ExpandablTestWidget> createState() => _ExpandablTestWidgetState();
}

class _ExpandablTestWidgetState extends State<ExpandablTestWidget> {
  late ExpandablTestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExpandablTestModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.dropdownExpandableModel,
                updateCallback: () => setState(() {}),
                child: const DropdownExpandableWidget(
                  dropdownButtonName: 'Budget',
                  hintText: '4000',
                  labelText: 'Budget in \$',
                  initialText: '4000',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
