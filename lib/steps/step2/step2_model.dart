import '/flutter_flow/flutter_flow_util.dart';
import 'step2_widget.dart' show Step2Widget;
import 'package:flutter/material.dart';

class Step2Model extends FlutterFlowModel<Step2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtEventType widget.
  FocusNode? txtEventTypeFocusNode;
  TextEditingController? txtEventTypeTextController;
  String? Function(BuildContext, String?)? txtEventTypeTextControllerValidator;
  // State field(s) for txtTopic widget.
  FocusNode? txtTopicFocusNode;
  TextEditingController? txtTopicTextController;
  String? Function(BuildContext, String?)? txtTopicTextControllerValidator;
  // State field(s) for txtColores widget.
  FocusNode? txtColoresFocusNode;
  TextEditingController? txtColoresTextController;
  String? Function(BuildContext, String?)? txtColoresTextControllerValidator;
  // State field(s) for txtComment widget.
  FocusNode? txtCommentFocusNode;
  TextEditingController? txtCommentTextController;
  String? Function(BuildContext, String?)? txtCommentTextControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtEventTypeFocusNode?.dispose();
    txtEventTypeTextController?.dispose();

    txtTopicFocusNode?.dispose();
    txtTopicTextController?.dispose();

    txtColoresFocusNode?.dispose();
    txtColoresTextController?.dispose();

    txtCommentFocusNode?.dispose();
    txtCommentTextController?.dispose();
  }
}
