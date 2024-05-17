import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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
    return Icon(
      Icons.vertical_split_sharp,
      color: Color(0xFF620868),
      size: 58.0,
    );
  }
}
