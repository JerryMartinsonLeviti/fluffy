import '/components/vision_board_option/vision_board_option_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vision_board_add_to_drawer_widget.dart'
    show VisionBoardAddToDrawerWidget;
import 'package:flutter/material.dart';

class VisionBoardAddToDrawerModel
    extends FlutterFlowModel<VisionBoardAddToDrawerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for VisionBoardOption component.
  late VisionBoardOptionModel visionBoardOptionModel1;
  // Model for VisionBoardOption component.
  late VisionBoardOptionModel visionBoardOptionModel2;
  // Model for VisionBoardOption component.
  late VisionBoardOptionModel visionBoardOptionModel3;

  @override
  void initState(BuildContext context) {
    visionBoardOptionModel1 =
        createModel(context, () => VisionBoardOptionModel());
    visionBoardOptionModel2 =
        createModel(context, () => VisionBoardOptionModel());
    visionBoardOptionModel3 =
        createModel(context, () => VisionBoardOptionModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    visionBoardOptionModel1.dispose();
    visionBoardOptionModel2.dispose();
    visionBoardOptionModel3.dispose();
  }
}
