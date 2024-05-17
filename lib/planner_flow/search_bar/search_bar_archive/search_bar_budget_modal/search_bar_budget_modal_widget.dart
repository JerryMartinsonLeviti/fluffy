import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/planner_flow/search_bar/search_bar_budget_component/search_bar_budget_component_widget.dart';
import 'package:flutter/material.dart';
import 'search_bar_budget_modal_model.dart';
export 'search_bar_budget_modal_model.dart';

class SearchBarBudgetModalWidget extends StatefulWidget {
  const SearchBarBudgetModalWidget({super.key});

  @override
  State<SearchBarBudgetModalWidget> createState() =>
      _SearchBarBudgetModalWidgetState();
}

class _SearchBarBudgetModalWidgetState
    extends State<SearchBarBudgetModalWidget> {
  late SearchBarBudgetModalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchBarBudgetModalModel());

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
            model: _model.searchBarBudgetComponentModel,
            updateCallback: () => setState(() {}),
            child: const SearchBarBudgetComponentWidget(),
          ),
        ),
      ),
    );
  }
}
