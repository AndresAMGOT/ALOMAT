import '/flutter_flow/flutter_flow_util.dart';
import 'inv_c_r_u_d_widget.dart' show InvCRUDWidget;
import 'package:flutter/material.dart';

class InvCRUDModel extends FlutterFlowModel<InvCRUDWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
