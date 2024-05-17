import '/archive/markdown_entry_widget/markdown_entry_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'markdown_entry_widget_test_widget.dart'
    show MarkdownEntryWidgetTestWidget;
import 'package:flutter/material.dart';

class MarkdownEntryWidgetTestModel
    extends FlutterFlowModel<MarkdownEntryWidgetTestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MarkdownEntryWidget component.
  late MarkdownEntryWidgetModel markdownEntryWidgetModel;

  @override
  void initState(BuildContext context) {
    markdownEntryWidgetModel =
        createModel(context, () => MarkdownEntryWidgetModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    markdownEntryWidgetModel.dispose();
  }
}
