import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dropdown_expandable_model.dart';
export 'dropdown_expandable_model.dart';

class DropdownExpandableWidget extends StatefulWidget {
  const DropdownExpandableWidget({
    super.key,
    required this.dropdownButtonName,
    required this.hintText,
    required this.labelText,
    required this.initialText,
  });

  final String? dropdownButtonName;
  final String? hintText;
  final String? labelText;
  final String? initialText;

  @override
  State<DropdownExpandableWidget> createState() =>
      _DropdownExpandableWidgetState();
}

class _DropdownExpandableWidgetState extends State<DropdownExpandableWidget> {
  late DropdownExpandableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropdownExpandableModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.initialText = widget.initialText;
      });
    });

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 100.0,
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: ExpandableNotifier(
            controller: _model.expandableExpandableController,
            child: ExpandablePanel(
              header: Text(
                'Hello World',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              collapsed: Container(),
              expanded: Text(
                'Hello World',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              theme: const ExpandableThemeData(
                tapHeaderToExpand: true,
                tapBodyToExpand: false,
                tapBodyToCollapse: false,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                hasIcon: true,
                expandIcon: Icons.arrow_right,
                collapseIcon: Icons.arrow_drop_down,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
