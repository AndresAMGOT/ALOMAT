import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'step1_widget.dart' show Step1Widget;
import 'package:flutter/material.dart';

class Step1Model extends FlutterFlowModel<Step1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
    unfocusNode.dispose();
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
