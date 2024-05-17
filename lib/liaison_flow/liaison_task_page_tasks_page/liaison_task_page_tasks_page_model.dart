import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'liaison_task_page_tasks_page_widget.dart'
    show LiaisonTaskPageTasksPageWidget;
import 'package:flutter/material.dart';

class LiaisonTaskPageTasksPageModel
    extends FlutterFlowModel<LiaisonTaskPageTasksPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
