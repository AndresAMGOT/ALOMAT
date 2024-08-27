import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/actualizar_inventario_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'administrador_inventario_model.dart';
export 'administrador_inventario_model.dart';

class AdministradorInventarioWidget extends StatefulWidget {
  const AdministradorInventarioWidget({super.key});

  @override
  State<AdministradorInventarioWidget> createState() =>
      _AdministradorInventarioWidgetState();
}

class _AdministradorInventarioWidgetState
    extends State<AdministradorInventarioWidget> {
  late AdministradorInventarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdministradorInventarioModel());

    _model.txtCodeTextController ??= TextEditingController();
    _model.txtCodeFocusNode ??= FocusNode();

    _model.txtNameProductTextController ??= TextEditingController();
    _model.txtNameProductFocusNode ??= FocusNode();

    _model.txtDescriptionTextController ??= TextEditingController();
    _model.txtDescriptionFocusNode ??= FocusNode();

    _model.txtCantidadTextController ??= TextEditingController();
    _model.txtCantidadFocusNode ??= FocusNode();

    _model.txtColorTextController ??= TextEditingController();
    _model.txtColorFocusNode ??= FocusNode();

    _model.txtPrecioTextController ??= TextEditingController();
    _model.txtPrecioFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ProductoRecord>>(
      stream: queryProductoRecord(
        queryBuilder: (productoRecord) =>
            productoRecord.orderBy('FechaCreacion', descending: true),
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
        List<ProductoRecord> administradorInventarioProductoRecordList =
            snapshot.data!;

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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                height: 300.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF00070F),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 5.0, 16.0),
                                            child: SizedBox(
                                              width: 370.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .txtCodeTextController,
                                                focusNode:
                                                    _model.txtCodeFocusNode,
                                                autofocus: true,
                                                autofillHints: const [
                                                  AutofillHints.email
                                                ],
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Código',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                    .txtCodeTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 5.0, 16.0),
                                            child: SizedBox(
                                              width: 370.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .txtNameProductTextController,
                                                focusNode: _model
                                                    .txtNameProductFocusNode,
                                                autofocus: true,
                                                autofillHints: const [
                                                  AutofillHints.email
                                                ],
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Nombre Producto',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                    .txtNameProductTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 5.0, 16.0),
                                            child: SizedBox(
                                              width: 370.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .txtDescriptionTextController,
                                                focusNode: _model
                                                    .txtDescriptionFocusNode,
                                                autofocus: true,
                                                autofillHints: const [
                                                  AutofillHints.email
                                                ],
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Descripción',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                    .txtDescriptionTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 5.0, 16.0),
                                            child: SizedBox(
                                              width: 370.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .txtCantidadTextController,
                                                focusNode:
                                                    _model.txtCantidadFocusNode,
                                                autofocus: true,
                                                autofillHints: const [
                                                  AutofillHints.email
                                                ],
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Cantidad',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                    .txtCantidadTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                height: 300.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF00070F),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 5.0, 16.0),
                                            child: SizedBox(
                                              width: 370.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .txtColorTextController,
                                                focusNode:
                                                    _model.txtColorFocusNode,
                                                autofocus: true,
                                                autofillHints: const [
                                                  AutofillHints.email
                                                ],
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Color',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                    .txtColorTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 5.0, 16.0),
                                            child: SizedBox(
                                              width: 370.0,
                                              child: TextFormField(
                                                controller: _model
                                                    .txtPrecioTextController,
                                                focusNode:
                                                    _model.txtPrecioFocusNode,
                                                autofocus: true,
                                                autofillHints: const [
                                                  AutofillHints.email
                                                ],
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Precio',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                      color:
                                                          FlutterFlowTheme.of(
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
                                                    .txtPrecioTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  3.0, 0.0, 0.0, 3.0),
                                          child: StreamBuilder<
                                              List<CategoriaProductosRecord>>(
                                            stream:
                                                queryCategoriaProductosRecord(),
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
                                              List<CategoriaProductosRecord>
                                                  dbCategoriaCategoriaProductosRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<
                                                  String>(
                                                controller: _model
                                                        .dbCategoriaValueController ??=
                                                    FormFieldController<String>(
                                                  _model.dbCategoriaValue ??=
                                                      dbCategoriaCategoriaProductosRecordList
                                                          .length
                                                          .toString(),
                                                ),
                                                options:
                                                    dbCategoriaCategoriaProductosRecordList
                                                        .map((e) =>
                                                            valueOrDefault<
                                                                String>(
                                                              e.nombre,
                                                              'Manteleria',
                                                            ))
                                                        .toList(),
                                                onChanged: (val) => setState(
                                                    () => _model
                                                            .dbCategoriaValue =
                                                        val),
                                                width: 184.0,
                                                height: 50.0,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: const Color(0xFFF1F4F8),
                                                      letterSpacing: 0.0,
                                                    ),
                                                hintText:
                                                    'Seleccione una categoria...',
                                                icon: const Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: Color(0xFFE8E6D7),
                                                  size: 24.0,
                                                ),
                                                fillColor: const Color(0xFFBF9E75),
                                                elevation: 2.0,
                                                borderColor: const Color(0xFFE8E6D7),
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 4.0, 16.0, 4.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent4,
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            fillColor: const Color(0xFFF3E2CE),
                                            icon: Icon(
                                              Icons.image_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              final selectedMedia =
                                                  await selectMedia(
                                                mediaSource:
                                                    MediaSource.photoGallery,
                                                multiImage: false,
                                              );
                                              if (selectedMedia != null &&
                                                  selectedMedia.every((m) =>
                                                      validateFileFormat(
                                                          m.storagePath,
                                                          context))) {
                                                setState(() => _model
                                                    .isDataUploading = true);
                                                var selectedUploadedFiles =
                                                    <FFUploadedFile>[];

                                                var downloadUrls = <String>[];
                                                try {
                                                  selectedUploadedFiles =
                                                      selectedMedia
                                                          .map((m) =>
                                                              FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                              ))
                                                          .toList();

                                                  downloadUrls =
                                                      (await Future.wait(
                                                    selectedMedia.map(
                                                      (m) async =>
                                                          await uploadData(
                                                              m.storagePath,
                                                              m.bytes),
                                                    ),
                                                  ))
                                                          .where(
                                                              (u) => u != null)
                                                          .map((u) => u!)
                                                          .toList();
                                                } finally {
                                                  _model.isDataUploading =
                                                      false;
                                                }
                                                if (selectedUploadedFiles
                                                            .length ==
                                                        selectedMedia.length &&
                                                    downloadUrls.length ==
                                                        selectedMedia.length) {
                                                  setState(() {
                                                    _model.uploadedLocalFile =
                                                        selectedUploadedFiles
                                                            .first;
                                                    _model.uploadedFileUrl =
                                                        downloadUrls.first;
                                                  });
                                                } else {
                                                  setState(() {});
                                                  return;
                                                }
                                              }
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if ((_model.txtCodeTextController.text != '') &&
                                (_model
                                            .txtNameProductTextController.text !=
                                        '') &&
                                (_model
                                            .txtDescriptionTextController.text !=
                                        '') &&
                                (_model
                                            .txtCantidadTextController.text !=
                                        '') &&
                                (_model.txtPrecioTextController.text !=
                                        '') &&
                                (_model.dbCategoriaValue != null &&
                                    _model.dbCategoriaValue != '') &&
                                (_model.uploadedFileUrl != '') &&
                                (_model.txtColorTextController.text != '')) {
                              await ProductoRecord.collection
                                  .doc()
                                  .set(createProductoRecordData(
                                    codigo: _model.txtCodeTextController.text,
                                    nombre: _model
                                        .txtNameProductTextController.text,
                                    descripcion: _model
                                        .txtDescriptionTextController.text,
                                    cantidad: int.tryParse(
                                        _model.txtCantidadTextController.text),
                                    precio: double.tryParse(
                                        _model.txtPrecioTextController.text),
                                    fechaCreacion: getCurrentTimestamp,
                                    categoria: _model.dbCategoriaValue,
                                    creadoPor: currentUserReference,
                                    color: _model.txtColorTextController.text,
                                    imagen: _model.uploadedFileUrl,
                                  ));
                              setState(() {
                                _model.txtCodeTextController?.clear();
                                _model.txtNameProductTextController?.clear();
                                _model.txtDescriptionTextController?.clear();
                                _model.txtCantidadTextController?.clear();
                                _model.txtPrecioTextController?.clear();
                              });
                              setState(() {
                                _model.isDataUploading = false;
                                _model.uploadedLocalFile = FFUploadedFile(
                                    bytes: Uint8List.fromList([]));
                                _model.uploadedFileUrl = '';
                              });

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    '¡Producto registrado exitosamente!',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor: const Color(0xFF1ABD00),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Toda la información es requerida.',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor: const Color(0xFFBCBF0D),
                                ),
                              );
                            }
                          },
                          text: 'Registrar Producto',
                          icon: const Icon(
                            Icons.add_box,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            width: 170.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFFF3E2CE),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF00070F),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Color(0xFFBF9E75),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final productos =
                            administradorInventarioProductoRecordList.toList();

                        return FlutterFlowDataTable<ProductoRecord>(
                          controller: _model.paginatedDataTableController,
                          data: productos,
                          columnsBuilder: (onSortChanged) => [
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Producto',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Categoria',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Imagen',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Cantidad',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  'Acciones',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                          dataRowBuilder: (productosItem, productosIndex,
                                  selected, onSelectChanged) =>
                              DataRow(
                            color: WidgetStateProperty.all(
                              productosIndex % 2 == 0
                                  ? const Color(0xFFF3E2CE)
                                  : const Color(0xDAF3E2CE),
                            ),
                            cells: [
                              Text(
                                productosItem.nombre,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 11.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  productosItem.categoria,
                                  'No definida',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 11.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    productosItem.imagen,
                                    width: 100.0,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  productosItem.cantidad.toString(),
                                  '0.0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 11.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: const Color(0x00F3E2CE),
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () =>
                                                    FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: SizedBox(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.8,
                                                    child:
                                                        ActualizarInventarioWidget(
                                                      prmProducto:
                                                          productosItem,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: Icon(
                                          key: ValueKey(
                                              productosItem.reference.id),
                                          Icons.edit,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          var confirmDialogResponse =
                                              await showDialog<bool>(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: const Text('¡Alerta!'),
                                                        content: const Text(
                                                            'Esta a punto de eliminar el producto ¿Desea continuar?'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child:
                                                                const Text('Cancel'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child:
                                                                const Text('Confirm'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ) ??
                                                  false;
                                          if (confirmDialogResponse) {
                                            await productosItem.reference
                                                .delete();
                                          }
                                        },
                                        child: Icon(
                                          key: ValueKey(
                                              productosItem.reference.id),
                                          Icons.delete_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ].map((c) => DataCell(c)).toList(),
                          ),
                          paginated: true,
                          selectable: false,
                          hidePaginator: false,
                          showFirstLastButtons: true,
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          columnSpacing: 10.0,
                          headingRowColor: const Color(0xFFBF9E75),
                          borderRadius: BorderRadius.circular(8.0),
                          addHorizontalDivider: true,
                          addTopAndBottomDivider: false,
                          hideDefaultHorizontalDivider: false,
                          horizontalDividerColor:
                              FlutterFlowTheme.of(context).primaryText,
                          horizontalDividerThickness: 1.0,
                          addVerticalDivider: false,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
