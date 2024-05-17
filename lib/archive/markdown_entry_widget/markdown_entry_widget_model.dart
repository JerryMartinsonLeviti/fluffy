import '/flutter_flow/flutter_flow_util.dart';
import 'markdown_entry_widget_widget.dart' show MarkdownEntryWidgetWidget;
import 'package:flutter/material.dart';

class MarkdownEntryWidgetModel
    extends FlutterFlowModel<MarkdownEntryWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
