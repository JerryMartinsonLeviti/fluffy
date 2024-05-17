import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icon_requestto_book_plane_model.dart';
export 'icon_requestto_book_plane_model.dart';

class IconRequesttoBookPlaneWidget extends StatefulWidget {
  const IconRequesttoBookPlaneWidget({super.key});

  @override
  State<IconRequesttoBookPlaneWidget> createState() =>
      _IconRequesttoBookPlaneWidgetState();
}

class _IconRequesttoBookPlaneWidgetState
    extends State<IconRequesttoBookPlaneWidget> {
  late IconRequesttoBookPlaneModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconRequesttoBookPlaneModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      FontAwesomeIcons.paperPlane,
      color: Color(0xFF620868),
      size: 50.0,
    );
  }
}
