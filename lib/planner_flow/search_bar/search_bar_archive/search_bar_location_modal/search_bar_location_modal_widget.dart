import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/planner_flow/search_bar/search_bar_location_component/search_bar_location_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_bar_location_modal_model.dart';
export 'search_bar_location_modal_model.dart';

class SearchBarLocationModalWidget extends StatefulWidget {
  const SearchBarLocationModalWidget({super.key});

  @override
  State<SearchBarLocationModalWidget> createState() =>
      _SearchBarLocationModalWidgetState();
}

class _SearchBarLocationModalWidgetState
    extends State<SearchBarLocationModalWidget> {
  late SearchBarLocationModalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchBarLocationModalModel());

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
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.searchBarLocationComponentModel,
            updateCallback: () => setState(() {}),
            child: SearchBarLocationComponentWidget(),
          ),
        ),
      ),
    );
  }
}
