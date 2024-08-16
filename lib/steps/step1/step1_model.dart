import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'step1_widget.dart' show Step1Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Step1Model extends FlutterFlowModel<Step1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtEventAddress widget.
  FocusNode? txtEventAddressFocusNode;
  TextEditingController? txtEventAddressTextController;
  String? Function(BuildContext, String?)?
      txtEventAddressTextControllerValidator;
  // State field(s) for txtNamePlace widget.
  FocusNode? txtNamePlaceFocusNode;
  TextEditingController? txtNamePlaceTextController;
  String? Function(BuildContext, String?)? txtNamePlaceTextControllerValidator;
  // State field(s) for txtStartHour widget.
  FocusNode? txtStartHourFocusNode;
  TextEditingController? txtStartHourTextController;
  String? Function(BuildContext, String?)? txtStartHourTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for dpDecoredBefore widget.
  String? dpDecoredBeforeValue;
  FormFieldController<String>? dpDecoredBeforeValueController;
  // State field(s) for txtPhoneReception widget.
  FocusNode? txtPhoneReceptionFocusNode;
  TextEditingController? txtPhoneReceptionTextController;
  String? Function(BuildContext, String?)?
      txtPhoneReceptionTextControllerValidator;
  // State field(s) for txtReception widget.
  FocusNode? txtReceptionFocusNode;
  TextEditingController? txtReceptionTextController;
  String? Function(BuildContext, String?)? txtReceptionTextControllerValidator;
  // State field(s) for dpPaidMethod widget.
  String? dpPaidMethodValue;
  FormFieldController<String>? dpPaidMethodValueController;
  // Stores action output result for [Backend Call - Create Document] action in btnConfirmar widget.
  SolicitudEventoPorAplicanteRecord? responseSaveApplicant;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtEventAddressFocusNode?.dispose();
    txtEventAddressTextController?.dispose();

    txtNamePlaceFocusNode?.dispose();
    txtNamePlaceTextController?.dispose();

    txtStartHourFocusNode?.dispose();
    txtStartHourTextController?.dispose();

    txtPhoneReceptionFocusNode?.dispose();
    txtPhoneReceptionTextController?.dispose();

    txtReceptionFocusNode?.dispose();
    txtReceptionTextController?.dispose();
  }
}
