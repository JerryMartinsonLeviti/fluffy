import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_profile_component_model.dart';
export 'user_profile_component_model.dart';

class UserProfileComponentWidget extends StatefulWidget {
  const UserProfileComponentWidget({super.key});

  @override
  State<UserProfileComponentWidget> createState() =>
      _UserProfileComponentWidgetState();
}

class _UserProfileComponentWidgetState
    extends State<UserProfileComponentWidget> {
  late UserProfileComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserProfileComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(),
      child: Align(
        alignment: AlignmentDirectional(0.0, -1.0),
        child: Container(
          width: 120.0,
          height: 120.0,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.network(
            'https://picsum.photos/seed/108/600',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
