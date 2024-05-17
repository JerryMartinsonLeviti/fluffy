import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_heart_model.dart';
export 'icon_heart_model.dart';

class IconHeartWidget extends StatefulWidget {
  const IconHeartWidget({super.key});

  @override
  State<IconHeartWidget> createState() => _IconHeartWidgetState();
}

class _IconHeartWidgetState extends State<IconHeartWidget> {
  late IconHeartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconHeartModel());

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
      Icons.favorite_sharp,
      color: Color(0xCBD35F32),
      size: 58.0,
    );
  }
}
