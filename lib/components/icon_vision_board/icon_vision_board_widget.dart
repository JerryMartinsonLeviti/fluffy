import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'icon_vision_board_model.dart';
export 'icon_vision_board_model.dart';

class IconVisionBoardWidget extends StatefulWidget {
  const IconVisionBoardWidget({super.key});

  @override
  State<IconVisionBoardWidget> createState() => _IconVisionBoardWidgetState();
}

class _IconVisionBoardWidgetState extends State<IconVisionBoardWidget> {
  late IconVisionBoardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconVisionBoardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.vertical_split_sharp,
      color: Color(0xFF620868),
      size: 58.0,
    );
  }
}
