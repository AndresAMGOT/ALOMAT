import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'step5_model.dart';
export 'step5_model.dart';

class Step5Widget extends StatefulWidget {
  const Step5Widget({
    super.key,
    required this.prmIdSolicitud,
  });

  final DocumentReference? prmIdSolicitud;

  @override
  State<Step5Widget> createState() => _Step5WidgetState();
}

class _Step5WidgetState extends State<Step5Widget> {
  late Step5Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Step5Model());

    _model.txtNombreTextController ??=
        TextEditingController(text: currentUserDisplayName);
    _model.txtNombreFocusNode ??= FocusNode();

    _model.txtEmailTextController ??=
        TextEditingController(text: currentUserEmail);
    _model.txtEmailFocusNode ??= FocusNode();

    _model.txtTelefonoTextController ??=
        TextEditingController(text: currentPhoneNumber);
    _model.txtTelefonoFocusNode ??= FocusNode();

    _model.txtTipoEventoFocusNode ??= FocusNode();

    _model.txtNombreSalonFocusNode ??= FocusNode();

    _model.txtRecepcionistaFocusNode ??= FocusNode();

    _model.txtTelRecepcionistaFocusNode ??= FocusNode();

    _model.txtHoraIngresoFocusNode ??= FocusNode();

    _model.txtFechaFocusNode ??= FocusNode();

    _model.txtCommentFocusNode ??= FocusNode();

    _model.txtTematicaFocusNode ??= FocusNode();

    _model.txtColoresFocusNode ??= FocusNode();

    _model.txtCommentGeneralFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<SolicitudEventoPorAplicanteRecord>>(
      stream: querySolicitudEventoPorAplicanteRecord(
        queryBuilder: (solicitudEventoPorAplicanteRecord) =>
            solicitudEventoPorAplicanteRecord.where(Filter.or(
          Filter(
            'Usuario',
            isEqualTo: currentUserReference,
          ),
          Filter(
            'IsActived',
            isEqualTo: true,
          ),
          Filter(
            'EstaCompletado',
            isEqualTo: false,
          ),
        )),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: const Color(0xFF00070F),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<SolicitudEventoPorAplicanteRecord>
            step5SolicitudEventoPorAplicanteRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final step5SolicitudEventoPorAplicanteRecord =
            step5SolicitudEventoPorAplicanteRecordList.isNotEmpty
                ? step5SolicitudEventoPorAplicanteRecordList.first
                : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFF00070F),
            drawer: Drawer(
              elevation: 16.0,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            if (scaffoldKey.currentState!.isDrawerOpen ||
                                scaffoldKey.currentState!.isEndDrawerOpen) {
                              Navigator.pop(context);
                            }
                          },
                          child: Icon(
                            Icons.chevron_left,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AuthUserStreamWidget(
                          builder: (context) => Container(
                            width: 75.0,
                            height: 75.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              currentUserPhoto,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AuthUserStreamWidget(
                          builder: (context) => Text(
                            currentUserDisplayName,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Source Sans 3',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        currentUserEmail,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.person,
                          ),
                          title: Text(
                            'Perfil',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          dense: false,
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('HomePage');
                          },
                          child: ListTile(
                            leading: const Icon(
                              Icons.home,
                            ),
                            title: Text(
                              'Inicio',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            dense: false,
                          ),
                        ),
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isUser, false) ==
                            true)
                          AuthUserStreamWidget(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Step1');
                              },
                              child: ListTile(
                                leading: const Icon(
                                  Icons.event_note,
                                ),
                                title: Text(
                                  'Planificar evento',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                dense: false,
                              ),
                            ),
                          ),
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isAdmin, false) ==
                            true)
                          AuthUserStreamWidget(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('AdministradorInventario');
                              },
                              child: ListTile(
                                leading: const Icon(
                                  Icons.add_shopping_cart,
                                ),
                                title: Text(
                                  'Inventario',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                dense: false,
                              ),
                            ),
                          ),
                        if (valueOrDefault<bool>(
                                currentUserDocument?.isAdmin, false) ==
                            true)
                          AuthUserStreamWidget(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('RequestSPA');
                              },
                              child: ListTile(
                                leading: const Icon(
                                  Icons.event_rounded,
                                ),
                                title: Text(
                                  'Solicitudes',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                dense: false,
                              ),
                            ),
                          ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('Resenas');
                          },
                          child: ListTile(
                            leading: const Icon(
                              Icons.star_rounded,
                            ),
                            title: Text(
                              'Reseñas',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            dense: false,
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            await authManager.signOut();
                            GoRouter.of(context).clearRedirectLocation();

                            context.goNamedAuth('Login', context.mounted);
                          },
                          child: ListTile(
                            leading: const Icon(
                              Icons.login_rounded,
                            ),
                            title: Text(
                              'Cerrar sesión',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            dense: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              backgroundColor: const Color(0xFF00070F),
              automaticallyImplyLeading: true,
              actions: const [],
              centerTitle: true,
              elevation: 4.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: const Color(0xFFBF9E75),
                            borderRadius: 20.0,
                            borderWidth: 2.0,
                            buttonSize: 40.0,
                            fillColor: const Color(0xFFF3E2CE),
                            icon: Icon(
                              Icons.keyboard_return,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 80.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFF00070F),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  29.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Agendar un Evento',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Source Sans 3',
                                      color: const Color(0xFFFFE1AF),
                                      fontSize: 25.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Paso 5 de 5',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Source Sans 3',
                                  color: const Color(0xFFFFE1AF),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 350.0,
                      height: 640.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3DDB6),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Información Personal',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => SizedBox(
                                            width: 370.0,
                                            child: TextFormField(
                                              controller: _model
                                                  .txtNombreTextController,
                                              focusNode:
                                                  _model.txtNombreFocusNode,
                                              autofocus: true,
                                              autofillHints: const [
                                                AutofillHints.email
                                              ],
                                              readOnly: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Nombre',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFE8E6D7),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xBC00040F),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor: const Color(0xFFBF9E75),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              validator: _model
                                                  .txtNombreTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: SizedBox(
                                          width: 370.0,
                                          child: TextFormField(
                                            controller:
                                                _model.txtEmailTextController,
                                            focusNode: _model.txtEmailFocusNode,
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email
                                            ],
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Email',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE8E6D7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xBC00040F),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFBF9E75),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .txtEmailTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => SizedBox(
                                            width: 370.0,
                                            child: TextFormField(
                                              controller: _model
                                                  .txtTelefonoTextController,
                                              focusNode:
                                                  _model.txtTelefonoFocusNode,
                                              autofocus: true,
                                              autofillHints: const [
                                                AutofillHints.email
                                              ],
                                              readOnly: true,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText: 'Teléfono',
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFFE8E6D7),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0xBC00040F),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                filled: true,
                                                fillColor: const Color(0xFFBF9E75),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              validator: _model
                                                  .txtTelefonoTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                      StreamBuilder<List<FormaDePagoRecord>>(
                                        stream: queryFormaDePagoRecord(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<FormaDePagoRecord>
                                              dpPaidMethodFormaDePagoRecordList =
                                              snapshot.data!;

                                          return FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dpPaidMethodValueController ??=
                                                FormFieldController<String>(
                                              _model.dpPaidMethodValue ??=
                                                  step5SolicitudEventoPorAplicanteRecord
                                                      ?.formaDePago,
                                            ),
                                            options:
                                                dpPaidMethodFormaDePagoRecordList
                                                    .map((e) => e.nombre)
                                                    .toList(),
                                            onChanged: (val) => setState(() =>
                                                _model.dpPaidMethodValue = val),
                                            width: 300.0,
                                            height: 50.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: const Color(0xFFF1F4F8),
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Forma de Pago',
                                            icon: const Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color: Color(0xFFF1F4F8),
                                              size: 24.0,
                                            ),
                                            fillColor: const Color(0xFFBF9E75),
                                            elevation: 2.0,
                                            borderColor: const Color(0xFFE8E6D7),
                                            borderWidth: 2.0,
                                            borderRadius: 8.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          );
                                        },
                                      ),
                                      Text(
                                        'Información Evento',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: SizedBox(
                                          width: 370.0,
                                          child: TextFormField(
                                            controller: _model
                                                    .txtTipoEventoTextController ??=
                                                TextEditingController(
                                              text:
                                                  step5SolicitudEventoPorAplicanteRecord
                                                      ?.tipoDeEvento,
                                            ),
                                            focusNode:
                                                _model.txtTipoEventoFocusNode,
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email
                                            ],
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Tipo Evento',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE8E6D7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xBC00040F),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFBF9E75),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .txtTipoEventoTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: SizedBox(
                                          width: 370.0,
                                          child: TextFormField(
                                            controller: _model
                                                    .txtNombreSalonTextController ??=
                                                TextEditingController(
                                              text:
                                                  step5SolicitudEventoPorAplicanteRecord
                                                      ?.nombreSalon,
                                            ),
                                            focusNode:
                                                _model.txtNombreSalonFocusNode,
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email
                                            ],
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Nombre Salón',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE8E6D7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xBC00040F),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFBF9E75),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .txtNombreSalonTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: SizedBox(
                                          width: 370.0,
                                          child: TextFormField(
                                            controller: _model
                                                    .txtRecepcionistaTextController ??=
                                                TextEditingController(
                                              text:
                                                  step5SolicitudEventoPorAplicanteRecord
                                                      ?.recepcionista,
                                            ),
                                            focusNode: _model
                                                .txtRecepcionistaFocusNode,
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email
                                            ],
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Recepcionista',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE8E6D7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xBC00040F),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFBF9E75),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .txtRecepcionistaTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: SizedBox(
                                          width: 370.0,
                                          child: TextFormField(
                                            controller: _model
                                                    .txtTelRecepcionistaTextController ??=
                                                TextEditingController(
                                              text:
                                                  step5SolicitudEventoPorAplicanteRecord
                                                      ?.numeroTelefono,
                                            ),
                                            focusNode: _model
                                                .txtTelRecepcionistaFocusNode,
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email
                                            ],
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Telefono Recepcionista',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE8E6D7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xBC00040F),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFBF9E75),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .txtTelRecepcionistaTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: SizedBox(
                                          width: 370.0,
                                          child: TextFormField(
                                            controller: _model
                                                    .txtHoraIngresoTextController ??=
                                                TextEditingController(
                                              text:
                                                  step5SolicitudEventoPorAplicanteRecord
                                                      ?.horaEntrada,
                                            ),
                                            focusNode:
                                                _model.txtHoraIngresoFocusNode,
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email
                                            ],
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Hora Ingreso',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE8E6D7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xBC00040F),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFBF9E75),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .txtHoraIngresoTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: SizedBox(
                                          width: 370.0,
                                          child: TextFormField(
                                            controller: _model
                                                    .txtFechaTextController ??=
                                                TextEditingController(
                                              text:
                                                  step5SolicitudEventoPorAplicanteRecord
                                                      ?.fechaEvento,
                                            ),
                                            focusNode: _model.txtFechaFocusNode,
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email
                                            ],
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Fecha Evento',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE8E6D7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xBC00040F),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFBF9E75),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .txtFechaTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: SizedBox(
                                          width: 370.0,
                                          child: TextFormField(
                                            controller: _model
                                                    .txtCommentTextController ??=
                                                TextEditingController(
                                              text:
                                                  step5SolicitudEventoPorAplicanteRecord
                                                      ?.direccionEvento,
                                            ),
                                            focusNode:
                                                _model.txtCommentFocusNode,
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email
                                            ],
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Comentarios adicionales',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE8E6D7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xBC00040F),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFBF9E75),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: 4,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .txtCommentTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Generalidades',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: SizedBox(
                                          width: 370.0,
                                          child: TextFormField(
                                            controller: _model
                                                    .txtTematicaTextController ??=
                                                TextEditingController(
                                              text:
                                                  step5SolicitudEventoPorAplicanteRecord
                                                      ?.tematica,
                                            ),
                                            focusNode:
                                                _model.txtTematicaFocusNode,
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email
                                            ],
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Temática',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE8E6D7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xBC00040F),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFBF9E75),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: 4,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .txtTematicaTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: SizedBox(
                                          width: 370.0,
                                          child: TextFormField(
                                            controller: _model
                                                    .txtColoresTextController ??=
                                                TextEditingController(
                                              text:
                                                  step5SolicitudEventoPorAplicanteRecord
                                                      ?.coloresDePreferencia,
                                            ),
                                            focusNode:
                                                _model.txtColoresFocusNode,
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email
                                            ],
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Temática',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE8E6D7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xBC00040F),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFBF9E75),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: 4,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .txtColoresTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: SizedBox(
                                          width: 370.0,
                                          child: TextFormField(
                                            controller: _model
                                                    .txtCommentGeneralTextController ??=
                                                TextEditingController(
                                              text:
                                                  step5SolicitudEventoPorAplicanteRecord
                                                      ?.comentarioAdicional,
                                            ),
                                            focusNode: _model
                                                .txtCommentGeneralFocusNode,
                                            autofocus: true,
                                            autofillHints: const [
                                              AutofillHints.email
                                            ],
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText:
                                                  'Detalles a Considerar',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    letterSpacing: 0.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFE8E6D7),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                  color: Color(0xBC00040F),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              filled: true,
                                              fillColor: const Color(0xFFBF9E75),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                            maxLines: 4,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .txtCommentGeneralTextControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Productos Seleccionados',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: StreamBuilder<
                                                List<
                                                    ProductoPorAplicacionRecord>>(
                                              stream:
                                                  queryProductoPorAplicacionRecord(
                                                queryBuilder:
                                                    (productoPorAplicacionRecord) =>
                                                        productoPorAplicacionRecord
                                                            .where(
                                                  'Solicitud',
                                                  isEqualTo:
                                                      widget.prmIdSolicitud,
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<ProductoPorAplicacionRecord>
                                                    listViewProductoPorAplicacionRecordList =
                                                    snapshot.data!;

                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewProductoPorAplicacionRecordList
                                                          .length,
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewProductoPorAplicacionRecord =
                                                        listViewProductoPorAplicacionRecordList[
                                                            listViewIndex];
                                                    return Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color: const Color(0xFF02152B),
                                                      elevation: 4.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                listViewProductoPorAplicacionRecord
                                                                    .nombre,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: const Color(
                                                                          0xFFE8E6D7),
                                                                      fontSize:
                                                                          19.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        100.0,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      color: Color(
                                                                          0xFF02152B),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          5.0,
                                                                          5.0,
                                                                          5.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          listViewProductoPorAplicacionRecord
                                                                              .imagen,
                                                                          width:
                                                                              125.0,
                                                                          height:
                                                                              125.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Descripción: ${listViewProductoPorAplicacionRecord.descripcion}',
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Color:${listViewProductoPorAplicacionRecord.color}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: const Color(0xFFE8E6D7),
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            'Cantidad:${listViewProductoPorAplicacionRecord.cantidad.toString()}',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: const Color(0xFFE8E6D7),
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                context.safePop();
                                              },
                                              text: 'Atras',
                                              options: FFButtonOptions(
                                                width: 120.0,
                                                height: 44.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0xFFF3E2CE),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: const Color(0xFF00070F),
                                                      letterSpacing: 0.0,
                                                    ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Color(0xFFBF9E75),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              if (step5SolicitudEventoPorAplicanteRecord !=
                                                  null) {
                                                await step5SolicitudEventoPorAplicanteRecord
                                                    .reference
                                                    .update(
                                                        createSolicitudEventoPorAplicanteRecordData(
                                                  isActived: false,
                                                  estaCompletado: true,
                                                  nombre:
                                                      currentUserDisplayName,
                                                  emailUser: currentUserEmail,
                                                  telefonoUser:
                                                      currentPhoneNumber,
                                                ));
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: const Text('¡Alerta!'),
                                                      content: const Text(
                                                          'Su solicitud se ha enviado correctamente, un asesor de ALOMAT se pondrá en contacto con usted en un plazo de 48 horas.'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );

                                                context.pushNamed('HomePage');
                                              }
                                            },
                                            text: 'Formalizar',
                                            options: FFButtonOptions(
                                              width: 120.0,
                                              height: 44.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: const Color(0xFFF3E2CE),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0xFF00070F),
                                                    letterSpacing: 0.0,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Color(0xFFBF9E75),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
