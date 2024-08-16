import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'step3_widget.dart' show Step3Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Step3Model extends FlutterFlowModel<Step3Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtTime widget.
  FocusNode? txtTimeFocusNode;
  TextEditingController? txtTimeTextController;
  String? Function(BuildContext, String?)? txtTimeTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtTimeFocusNode?.dispose();
    txtTimeTextController?.dispose();
  }
}
