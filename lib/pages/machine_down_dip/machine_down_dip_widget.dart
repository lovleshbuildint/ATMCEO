import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/transaction_dip/transaction_dip_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'machine_down_dip_model.dart';
export 'machine_down_dip_model.dart';

class MachineDownDipWidget extends StatefulWidget {
  const MachineDownDipWidget({
    Key? key,
    required this.tabBar,
  }) : super(key: key);

  final int? tabBar;

  @override
  _MachineDownDipWidgetState createState() => _MachineDownDipWidgetState();
}

class _MachineDownDipWidgetState extends State<MachineDownDipWidget> {
  late MachineDownDipModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MachineDownDipModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: LatestBankDataCall.call(
        userId: FFAppState().userId,
        token: FFAppState().token,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFF2D2D2D),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitFadingCircle(
                  color: Color(0xFFFF0026),
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final machineDownDipLatestBankDataResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFF2D2D2D),
            body: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/bg.png',
                  ).image,
                ),
              ),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (FFAppState().visibilityState) {
                    setState(() {
                      FFAppState().visibilityState = false;
                    });
                  }
                },
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: Color(0x002D2D2D),
                      ),
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 55.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.goNamed(
                                            'MainScreen',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );

                                          setState(() {
                                            FFAppState().atmInfoState = false;
                                          });
                                        },
                                        child: Icon(
                                          Icons.arrow_back_rounded,
                                          color: Color(0xFFFF0026),
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: AutoSizeText(
                                        'Action Required',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Helvetica',
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: AutoSizeText(
                                        'Last updated: ${dateTimeFormat('yMMMd', getCurrentTimestamp)}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Helvetica',
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState().visibilityState) {
                                              setState(() {
                                                FFAppState().visibilityState =
                                                    false;
                                              });
                                            } else {
                                              setState(() {
                                                FFAppState().visibilityState =
                                                    true;
                                              });
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 10000));
                                              setState(() {
                                                FFAppState().visibilityState =
                                                    false;
                                              });
                                            }
                                          },
                                          child: Icon(
                                            Icons.info_outline,
                                            color: Color(0xFFB3B3B3),
                                            size: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 30.0, 16.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Icon(
                                      Icons.search,
                                      color: Color(0xFF757575),
                                      size: 20.0,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textController',
                                          Duration(milliseconds: 2000),
                                          () async {
                                            _model.tdresponse =
                                                await TransectionDipCall.call(
                                              userId: FFAppState().userId,
                                              token: FFAppState().token,
                                            );
                                            setState(() {
                                              _model.textController?.text =
                                                  getJsonField(
                                                functions.filter(
                                                    (_model.tdresponse
                                                            ?.jsonBody ??
                                                        ''),
                                                    _model.textController.text),
                                                r'''$''',
                                              ).toString();
                                            });

                                            setState(() {});
                                          },
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          hintText: 'Search by ATM ID',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Helvetica',
                                                    color: Color(0xFF757575),
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMediumFamily),
                                                  ),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: DefaultTabController(
                              length: 2,
                              initialIndex: min(
                                  valueOrDefault<int>(
                                    widget.tabBar,
                                    0,
                                  ),
                                  1),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment(0.0, 0),
                                    child: TabBar(
                                      labelColor: Colors.white,
                                      unselectedLabelColor: Colors.white,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .titleMediumFamily),
                                          ),
                                      indicatorColor: Color(0xFFFF0026),
                                      indicatorWeight: 3.0,
                                      tabs: [
                                        Tab(
                                          text: 'Machine Down',
                                        ),
                                        Tab(
                                          text: 'Transaction Dip',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 19.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors.white,
                                                          enableDrag: false,
                                                          useSafeArea: true,
                                                          context: context,
                                                          builder: (context) {
                                                            return GestureDetector(
                                                              onTap: () => FocusScope
                                                                      .of(
                                                                          context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    TransactionDipWidget(),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));

                                                        FFAppState().update(() {
                                                          FFAppState().filter5 =
                                                              false;
                                                          FFAppState().filter4 =
                                                              false;
                                                          FFAppState().filter3 =
                                                              false;
                                                          FFAppState().filter2 =
                                                              false;
                                                          FFAppState().filter1 =
                                                              true;
                                                          FFAppState()
                                                              .deleteFilter1value();
                                                          FFAppState()
                                                              .filter1value = '';

                                                          FFAppState()
                                                              .deleteFilter2value();
                                                          FFAppState()
                                                              .filter2value = '';

                                                          FFAppState()
                                                              .deleteFilter3value();
                                                          FFAppState()
                                                              .filter3value = '';

                                                          FFAppState()
                                                              .deleteFilter4value();
                                                          FFAppState()
                                                              .filter4value = '';

                                                          FFAppState()
                                                              .deleteFilter5value();
                                                          FFAppState()
                                                              .filter5value = '';
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 87.0,
                                                        height: 38.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                          border: Border.all(
                                                            color: Color(
                                                                0xFFF2F2F2),
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Filter',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: Colors
                                                                        .black,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Icon(
                                                                FFIcons
                                                                    .ksliders,
                                                                color: Color(
                                                                    0xFF959595),
                                                                size: 20.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    6.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child:
                                                            SingleChildScrollView(
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 48.0,
                                                                height: 38.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFFF0026),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6.0),
                                                                ),
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'All',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: Colors
                                                                            .black,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF2F2F2),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Hardware Down..',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Colors.black,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF2F2F2),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Cash Out',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Colors.black,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF2F2F2),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'UPS',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Colors.black,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF2F2F2),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Network Issue',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Colors.black,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF2F2F2),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'FLM',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Colors.black,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            18.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF2F2F2),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Others',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Colors.black,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      '',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: Color(
                                                                    0xFF2D2D2D),
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      '${FFAppState().noOfMachinesDown} Down Machines',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: Color(
                                                                    0xFF2D2D2D),
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  6.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: AlignedTooltip(
                                                        content: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        16.0,
                                                                        16.0,
                                                                        16.0),
                                                            child: Text(
                                                              'The following ATMs are currently not serviceable. Tickets have been raised to address their issues. Please prioritize their resolution.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Helvetica',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                  ),
                                                            )),
                                                        offset: 4.0,
                                                        preferredDirection:
                                                            AxisDirection.down,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                        backgroundColor:
                                                            Color(0xFF4D4D4D),
                                                        elevation: 4.0,
                                                        tailBaseWidth: 20.0,
                                                        tailLength: 18.0,
                                                        waitDuration: Duration(
                                                            milliseconds: 100),
                                                        showDuration: Duration(
                                                            milliseconds: 1500),
                                                        triggerMode:
                                                            TooltipTriggerMode
                                                                .tap,
                                                        child: Icon(
                                                          Icons.info_outline,
                                                          color:
                                                              Color(0xFF737373),
                                                          size: 18.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Builder(
                                                      builder: (context) {
                                                        if (FFAppState()
                                                            .atmInfoState) {
                                                          return FutureBuilder<
                                                              ApiCallResponse>(
                                                            future:
                                                                MachineDownCall
                                                                    .call(
                                                              userId:
                                                                  FFAppState()
                                                                      .userId,
                                                              token:
                                                                  FFAppState()
                                                                      .token,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitFadingCircle(
                                                                      color: Color(
                                                                          0xFFFF0026),
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              final dataTableMachineDownResponse =
                                                                  snapshot
                                                                      .data!;
                                                              return Builder(
                                                                builder:
                                                                    (context) {
                                                                  final dipData =
                                                                      getJsonField(
                                                                    dataTableMachineDownResponse
                                                                        .jsonBody,
                                                                    r'''$.data''',
                                                                  ).toList();
                                                                  return DataTable2(
                                                                    columns: [
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 10.0,
                                                                                  height: 46.0,
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF3B3B3C),
                                                                                        Colors.black
                                                                                      ],
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
                                                                                      begin: AlignmentDirectional(0.0, -1.0),
                                                                                      end: AlignmentDirectional(0, 1.0),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(6.0),
                                                                                      topRight: Radius.circular(0.0),
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Text(
                                                                                        'ATM Information',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                      if (!FFAppState().atmInfoState)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().atmInfoState = true;
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_right,
                                                                                            color: Color(0xFFFF0026),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      if (FFAppState().atmInfoState)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().atmInfoState = false;
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_left,
                                                                                            color: Color(0xFFFF0026),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'ATM ID',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Grade',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Bank',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Location',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            380.0,
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 46.0,
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF3B3B3C),
                                                                                        Colors.black
                                                                                      ],
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
                                                                                      begin: AlignmentDirectional(0.0, -1.0),
                                                                                      end: AlignmentDirectional(0, 1.0),
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'ATM Performance',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Transaction Trend',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Uptime Trend',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Down Time',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            260.0,
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 46.0,
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF3B3B3C),
                                                                                        Colors.black
                                                                                      ],
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
                                                                                      begin: AlignmentDirectional(0.0, -1.0),
                                                                                      end: AlignmentDirectional(0, 1.0),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(0.0),
                                                                                      topRight: Radius.circular(6.0),
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Reason',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Reason',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            100.0,
                                                                      ),
                                                                    ],
                                                                    rows: (dipData
                                                                            as Iterable)
                                                                        .mapIndexed((dipDataIndex,
                                                                                dipDataItem) =>
                                                                            [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              context.goNamed(
                                                                                                'ATMdetails',
                                                                                                queryParameters: {
                                                                                                  'atmId': serializeParam(
                                                                                                    getJsonField(
                                                                                                      dipDataItem,
                                                                                                      r'''$..atmId''',
                                                                                                    ).toString(),
                                                                                                    ParamType.String,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                                extra: <String, dynamic>{
                                                                                                  kTransitionInfoKey: TransitionInfo(
                                                                                                    hasTransition: true,
                                                                                                    transitionType: PageTransitionType.fade,
                                                                                                    duration: Duration(milliseconds: 0),
                                                                                                  ),
                                                                                                },
                                                                                              );
                                                                                            },
                                                                                            child: Text(
                                                                                              getJsonField(
                                                                                                dipDataItem,
                                                                                                r'''$..atmId''',
                                                                                              ).toString(),
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Silver')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Silver.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'New')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Presidential.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Gold')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Gold.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Platinum')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Platinum.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Bronze')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Bronze.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..bankName''',
                                                                                            ).toString(),
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..location''',
                                                                                            ).toString(),
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 5.0,
                                                                                      height: 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF2F2F2),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            '${getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..transactionTrend''',
                                                                                            ).toString()}%',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: functions.newCustomFunction2(getJsonField(
                                                                                                    dipDataItem,
                                                                                                    r'''$..transactionTrend''',
                                                                                                  )),
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            '${getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..uptimeTrend''',
                                                                                            ).toString()}%',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: functions.newCustomFunction2(getJsonField(
                                                                                                    dipDataItem,
                                                                                                    r'''$..uptimeTrend''',
                                                                                                  )),
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            '${getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..downTime''',
                                                                                            ).toString()}Hrs',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: functions.newCustomFunction2(getJsonField(
                                                                                                    dipDataItem,
                                                                                                    r'''$..uptimeTrend''',
                                                                                                  )),
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 5.0,
                                                                                      height: 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF2F2F2),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..reason''',
                                                                                            ).toString(),
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 5.0,
                                                                                      height: 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF2F2F2),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ].map((c) => DataCell(c)).toList())
                                                                        .map((e) => DataRow(cells: e))
                                                                        .toList(),
                                                                    headingRowColor:
                                                                        MaterialStateProperty
                                                                            .all(
                                                                      Color(
                                                                          0x00F1F4F8),
                                                                    ),
                                                                    headingRowHeight:
                                                                        100.0,
                                                                    dataRowColor:
                                                                        MaterialStateProperty
                                                                            .all(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                    dataRowHeight:
                                                                        56.0,
                                                                    border:
                                                                        TableBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                    ),
                                                                    dividerThickness:
                                                                        0.0,
                                                                    columnSpacing:
                                                                        0.0,
                                                                    showBottomBorder:
                                                                        true,
                                                                    minWidth:
                                                                        49.0,
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          );
                                                        } else {
                                                          return FutureBuilder<
                                                              ApiCallResponse>(
                                                            future:
                                                                TransectionDipCall
                                                                    .call(
                                                              userId:
                                                                  FFAppState()
                                                                      .userId,
                                                              token:
                                                                  FFAppState()
                                                                      .token,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitFadingCircle(
                                                                      color: Color(
                                                                          0xFFFF0026),
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              final dataTableTransectionDipResponse =
                                                                  snapshot
                                                                      .data!;
                                                              return Builder(
                                                                builder:
                                                                    (context) {
                                                                  final dipData =
                                                                      getJsonField(
                                                                    dataTableTransectionDipResponse
                                                                        .jsonBody,
                                                                    r'''$.data''',
                                                                  ).toList();
                                                                  return DataTable2(
                                                                    columns: [
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 46.0,
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF3B3B3C),
                                                                                        Colors.black
                                                                                      ],
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
                                                                                      begin: AlignmentDirectional(0.0, -1.0),
                                                                                      end: AlignmentDirectional(0, 1.0),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(6.0),
                                                                                      topRight: Radius.circular(0.0),
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Text(
                                                                                        'ATM Information',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                      if (!FFAppState().visibilityState)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().atmInfoState = true;
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_right,
                                                                                            color: Color(0xFFFF0026),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      if (FFAppState().visibilityState)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().atmInfoState = false;
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_left,
                                                                                            color: Color(0xFFFF0026),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'ATM ID',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Grade',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            140.0,
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 46.0,
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF3B3B3C),
                                                                                        Colors.black
                                                                                      ],
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
                                                                                      begin: AlignmentDirectional(0.0, -1.0),
                                                                                      end: AlignmentDirectional(0, 1.0),
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'ATM Performance',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Transaction Trend',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Uptime Trend',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Down Time',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            260.0,
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 46.0,
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF3B3B3C),
                                                                                        Colors.black
                                                                                      ],
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
                                                                                      begin: AlignmentDirectional(0.0, -1.0),
                                                                                      end: AlignmentDirectional(0, 1.0),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(0.0),
                                                                                      topRight: Radius.circular(6.0),
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Reason',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Reason',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            100.0,
                                                                      ),
                                                                    ],
                                                                    rows: (dipData
                                                                            as Iterable)
                                                                        .mapIndexed((dipDataIndex,
                                                                                dipDataItem) =>
                                                                            [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              context.goNamed(
                                                                                                'ATMdetails',
                                                                                                queryParameters: {
                                                                                                  'atmId': serializeParam(
                                                                                                    getJsonField(
                                                                                                      dipDataItem,
                                                                                                      r'''$..atmId''',
                                                                                                    ).toString(),
                                                                                                    ParamType.String,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                                extra: <String, dynamic>{
                                                                                                  kTransitionInfoKey: TransitionInfo(
                                                                                                    hasTransition: true,
                                                                                                    transitionType: PageTransitionType.fade,
                                                                                                    duration: Duration(milliseconds: 0),
                                                                                                  ),
                                                                                                },
                                                                                              );
                                                                                            },
                                                                                            child: Text(
                                                                                              getJsonField(
                                                                                                dipDataItem,
                                                                                                r'''$..atmId''',
                                                                                              ).toString(),
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Silver')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Silver.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'New')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Presidential.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Gold')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Gold.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Platinum')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Platinum.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Bronze')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Bronze.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 5.0,
                                                                                      height: 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF2F2F2),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            '${getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..transactionTrend''',
                                                                                            ).toString()}%',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: functions.newCustomFunction2(getJsonField(
                                                                                                    dipDataItem,
                                                                                                    r'''$..transactionTrend''',
                                                                                                  )),
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            '${getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..uptimeTrend''',
                                                                                            ).toString()}%',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: functions.newCustomFunction2(getJsonField(
                                                                                                    dipDataItem,
                                                                                                    r'''$..uptimeTrend''',
                                                                                                  )),
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            '${getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..downTime''',
                                                                                            ).toString()}Hrs',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: functions.newCustomFunction2(getJsonField(
                                                                                                    dipDataItem,
                                                                                                    r'''$..uptimeTrend''',
                                                                                                  )),
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 5.0,
                                                                                      height: 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF2F2F2),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..reason''',
                                                                                            ).toString(),
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 5.0,
                                                                                      height: 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF2F2F2),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ].map((c) => DataCell(c)).toList())
                                                                        .map((e) => DataRow(cells: e))
                                                                        .toList(),
                                                                    headingRowColor:
                                                                        MaterialStateProperty
                                                                            .all(
                                                                      Color(
                                                                          0x00F1F4F8),
                                                                    ),
                                                                    headingRowHeight:
                                                                        100.0,
                                                                    dataRowColor:
                                                                        MaterialStateProperty
                                                                            .all(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                    dataRowHeight:
                                                                        56.0,
                                                                    border:
                                                                        TableBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                    ),
                                                                    dividerThickness:
                                                                        0.0,
                                                                    columnSpacing:
                                                                        0.0,
                                                                    showBottomBorder:
                                                                        true,
                                                                    minWidth:
                                                                        49.0,
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          );
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 19.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 87.0,
                                                      height: 38.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFF2F2F2),
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Filter',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: Colors
                                                                      .black,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Icon(
                                                              FFIcons.ksliders,
                                                              color: Color(
                                                                  0xFF959595),
                                                              size: 20.0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    6.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child:
                                                            SingleChildScrollView(
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: 48.0,
                                                                height: 38.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFFF0026),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              6.0),
                                                                ),
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'All',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: Colors
                                                                            .black,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF2F2F2),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Hardware Down',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Colors.black,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF2F2F2),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Cash Out',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Colors.black,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF2F2F2),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'UPS',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Colors.black,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF2F2F2),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Network Issue',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Colors.black,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF2F2F2),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'FLM',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Colors.black,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            18.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: Color(
                                                                          0xFFF2F2F2),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Others',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Colors.black,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      '${FFAppState().noOfMachineTransactionDip} Transaction Dip',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: Color(
                                                                    0xFF2D2D2D),
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  6.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: AlignedTooltip(
                                                        content: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        16.0,
                                                                        16.0,
                                                                        16.0),
                                                            child: Text(
                                                              'The listed ATMs are currently underperforming. Analyze the performance issue and implement necessary actions to ensure seamless transactions.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Helvetica',
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                  ),
                                                            )),
                                                        offset: 4.0,
                                                        preferredDirection:
                                                            AxisDirection.down,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                        backgroundColor:
                                                            Color(0xFF4D4D4D),
                                                        elevation: 4.0,
                                                        tailBaseWidth: 20.0,
                                                        tailLength: 18.0,
                                                        waitDuration: Duration(
                                                            milliseconds: 100),
                                                        showDuration: Duration(
                                                            milliseconds: 1500),
                                                        triggerMode:
                                                            TooltipTriggerMode
                                                                .tap,
                                                        child: Icon(
                                                          Icons.info_outline,
                                                          color:
                                                              Color(0xFF737373),
                                                          size: 18.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Builder(
                                                      builder: (context) {
                                                        if (FFAppState()
                                                            .atmInfoState) {
                                                          return FutureBuilder<
                                                              ApiCallResponse>(
                                                            future:
                                                                TransectionDipCall
                                                                    .call(
                                                              userId:
                                                                  FFAppState()
                                                                      .userId,
                                                              token:
                                                                  FFAppState()
                                                                      .token,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitFadingCircle(
                                                                      color: Color(
                                                                          0xFFFF0026),
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              final dataTableTransectionDipResponse =
                                                                  snapshot
                                                                      .data!;
                                                              return Builder(
                                                                builder:
                                                                    (context) {
                                                                  final dipData =
                                                                      getJsonField(
                                                                    dataTableTransectionDipResponse
                                                                        .jsonBody,
                                                                    r'''$.data''',
                                                                  ).toList();
                                                                  return DataTable2(
                                                                    columns: [
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 10.0,
                                                                                  height: 46.0,
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF3B3B3C),
                                                                                        Colors.black
                                                                                      ],
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
                                                                                      begin: AlignmentDirectional(0.0, -1.0),
                                                                                      end: AlignmentDirectional(0, 1.0),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(6.0),
                                                                                      topRight: Radius.circular(0.0),
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Text(
                                                                                        'ATM Information',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                      if (!FFAppState().atmInfoState)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().atmInfoState = true;
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_right,
                                                                                            color: Color(0xFFFF0026),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      if (FFAppState().atmInfoState)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().atmInfoState = false;
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_left,
                                                                                            color: Color(0xFFFF0026),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'ATM ID',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Grade',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Bank',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Location',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            380.0,
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 46.0,
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF3B3B3C),
                                                                                        Colors.black
                                                                                      ],
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
                                                                                      begin: AlignmentDirectional(0.0, -1.0),
                                                                                      end: AlignmentDirectional(0, 1.0),
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'ATM Performance',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Transaction Trend',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Uptime Trend',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            180.0,
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 46.0,
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF3B3B3C),
                                                                                        Colors.black
                                                                                      ],
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
                                                                                      begin: AlignmentDirectional(0.0, -1.0),
                                                                                      end: AlignmentDirectional(0, 1.0),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(0.0),
                                                                                      topRight: Radius.circular(6.0),
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Reason',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Reason',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            100.0,
                                                                      ),
                                                                    ],
                                                                    rows: (dipData
                                                                            as Iterable)
                                                                        .mapIndexed((dipDataIndex,
                                                                                dipDataItem) =>
                                                                            [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              context.goNamed(
                                                                                                'ATMdetails',
                                                                                                queryParameters: {
                                                                                                  'atmId': serializeParam(
                                                                                                    getJsonField(
                                                                                                      dipDataItem,
                                                                                                      r'''$..atmId''',
                                                                                                    ).toString(),
                                                                                                    ParamType.String,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                                extra: <String, dynamic>{
                                                                                                  kTransitionInfoKey: TransitionInfo(
                                                                                                    hasTransition: true,
                                                                                                    transitionType: PageTransitionType.fade,
                                                                                                    duration: Duration(milliseconds: 0),
                                                                                                  ),
                                                                                                },
                                                                                              );
                                                                                            },
                                                                                            child: Text(
                                                                                              getJsonField(
                                                                                                dipDataItem,
                                                                                                r'''$..atmId''',
                                                                                              ).toString(),
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Silver')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Silver.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'New')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Presidential.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Gold')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Gold.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Platinum')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Platinum.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Bronze')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Bronze.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..bankName''',
                                                                                            ).toString(),
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..location''',
                                                                                            ).toString(),
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 5.0,
                                                                                      height: 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF2F2F2),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            '${getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..transactionTrend''',
                                                                                            ).toString()}%',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: functions.newCustomFunction2(getJsonField(
                                                                                                    dipDataItem,
                                                                                                    r'''$..transactionTrend''',
                                                                                                  )),
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            '${getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..uptimeTrend''',
                                                                                            ).toString()}%',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: functions.newCustomFunction2(getJsonField(
                                                                                                    dipDataItem,
                                                                                                    r'''$..uptimeTrend''',
                                                                                                  )),
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 5.0,
                                                                                      height: 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF2F2F2),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..reason''',
                                                                                            ).toString(),
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 5.0,
                                                                                      height: 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF2F2F2),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ].map((c) => DataCell(c)).toList())
                                                                        .map((e) => DataRow(cells: e))
                                                                        .toList(),
                                                                    headingRowColor:
                                                                        MaterialStateProperty
                                                                            .all(
                                                                      Color(
                                                                          0x00F1F4F8),
                                                                    ),
                                                                    headingRowHeight:
                                                                        100.0,
                                                                    dataRowColor:
                                                                        MaterialStateProperty
                                                                            .all(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                    dataRowHeight:
                                                                        56.0,
                                                                    border:
                                                                        TableBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                    ),
                                                                    dividerThickness:
                                                                        0.0,
                                                                    columnSpacing:
                                                                        0.0,
                                                                    showBottomBorder:
                                                                        true,
                                                                    minWidth:
                                                                        49.0,
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          );
                                                        } else {
                                                          return FutureBuilder<
                                                              ApiCallResponse>(
                                                            future:
                                                                TransectionDipCall
                                                                    .call(
                                                              userId:
                                                                  FFAppState()
                                                                      .userId,
                                                              token:
                                                                  FFAppState()
                                                                      .token,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitFadingCircle(
                                                                      color: Color(
                                                                          0xFFFF0026),
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              final dataTableTransectionDipResponse =
                                                                  snapshot
                                                                      .data!;
                                                              return Builder(
                                                                builder:
                                                                    (context) {
                                                                  final dipData =
                                                                      getJsonField(
                                                                    dataTableTransectionDipResponse
                                                                        .jsonBody,
                                                                    r'''$.data''',
                                                                  ).toList();
                                                                  return DataTable2(
                                                                    columns: [
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 46.0,
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF3B3B3C),
                                                                                        Colors.black
                                                                                      ],
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
                                                                                      begin: AlignmentDirectional(0.0, -1.0),
                                                                                      end: AlignmentDirectional(0, 1.0),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(6.0),
                                                                                      topRight: Radius.circular(0.0),
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Text(
                                                                                        'ATM Information',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                            ),
                                                                                      ),
                                                                                      if (!FFAppState().visibilityState)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().atmInfoState = true;
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_right,
                                                                                            color: Color(0xFFFF0026),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                      if (FFAppState().visibilityState)
                                                                                        InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            setState(() {
                                                                                              FFAppState().atmInfoState = false;
                                                                                            });
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_left,
                                                                                            color: Color(0xFFFF0026),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'ATM ID',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Grade',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            140.0,
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 46.0,
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF3B3B3C),
                                                                                        Colors.black
                                                                                      ],
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
                                                                                      begin: AlignmentDirectional(0.0, -1.0),
                                                                                      end: AlignmentDirectional(0, 1.0),
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'ATM Performance',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Transaction Trend',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Uptime Trend',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            180.0,
                                                                      ),
                                                                      DataColumn2(
                                                                        label: DefaultTextStyle
                                                                            .merge(
                                                                          softWrap:
                                                                              true,
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                  height: 46.0,
                                                                                  decoration: BoxDecoration(
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF3B3B3C),
                                                                                        Colors.black
                                                                                      ],
                                                                                      stops: [
                                                                                        0.0,
                                                                                        1.0
                                                                                      ],
                                                                                      begin: AlignmentDirectional(0.0, -1.0),
                                                                                      end: AlignmentDirectional(0, 1.0),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(0.0),
                                                                                      topRight: Radius.circular(6.0),
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Reason',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        height: 46.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Color(0xFFF5F5F5),
                                                                                        ),
                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          'Reason',
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                fontSize: 12.0,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        fixedWidth:
                                                                            100.0,
                                                                      ),
                                                                    ],
                                                                    rows: (dipData
                                                                            as Iterable)
                                                                        .mapIndexed((dipDataIndex,
                                                                                dipDataItem) =>
                                                                            [
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              context.goNamed(
                                                                                                'ATMdetails',
                                                                                                queryParameters: {
                                                                                                  'atmId': serializeParam(
                                                                                                    getJsonField(
                                                                                                      dipDataItem,
                                                                                                      r'''$..atmId''',
                                                                                                    ).toString(),
                                                                                                    ParamType.String,
                                                                                                  ),
                                                                                                }.withoutNulls,
                                                                                                extra: <String, dynamic>{
                                                                                                  kTransitionInfoKey: TransitionInfo(
                                                                                                    hasTransition: true,
                                                                                                    transitionType: PageTransitionType.fade,
                                                                                                    duration: Duration(milliseconds: 0),
                                                                                                  ),
                                                                                                },
                                                                                              );
                                                                                            },
                                                                                            child: Text(
                                                                                              getJsonField(
                                                                                                dipDataItem,
                                                                                                r'''$..atmId''',
                                                                                              ).toString(),
                                                                                              textAlign: TextAlign.center,
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Silver')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Silver.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'New')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Presidential.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Gold')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Gold.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Platimun')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Platinum.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..grade''',
                                                                                            ) ==
                                                                                            'Bronze')
                                                                                          Expanded(
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.asset(
                                                                                                'assets/images/Bronze.png',
                                                                                                width: 24.0,
                                                                                                height: 24.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 5.0,
                                                                                      height: 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF2F2F2),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            '${getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..transactionTrend''',
                                                                                            ).toString()}%',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: functions.newCustomFunction2(getJsonField(
                                                                                                    dipDataItem,
                                                                                                    r'''$..transactionTrend''',
                                                                                                  )),
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            '${getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..uptimeTrend''',
                                                                                            ).toString()}%',
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                  color: functions.newCustomFunction2(getJsonField(
                                                                                                    dipDataItem,
                                                                                                    r'''$..uptimeTrend''',
                                                                                                  )),
                                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 5.0,
                                                                                      height: 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF2F2F2),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Text(
                                                                                            getJsonField(
                                                                                              dipDataItem,
                                                                                              r'''$..reason''',
                                                                                            ).toString(),
                                                                                            textAlign: TextAlign.center,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 1.0),
                                                                                    child: Container(
                                                                                      width: MediaQuery.sizeOf(context).width * 5.0,
                                                                                      height: 1.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xFFF2F2F2),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ].map((c) => DataCell(c)).toList())
                                                                        .map((e) => DataRow(cells: e))
                                                                        .toList(),
                                                                    headingRowColor:
                                                                        MaterialStateProperty
                                                                            .all(
                                                                      Color(
                                                                          0x00F1F4F8),
                                                                    ),
                                                                    headingRowHeight:
                                                                        100.0,
                                                                    dataRowColor:
                                                                        MaterialStateProperty
                                                                            .all(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                    dataRowHeight:
                                                                        56.0,
                                                                    border:
                                                                        TableBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                    ),
                                                                    dividerThickness:
                                                                        0.0,
                                                                    columnSpacing:
                                                                        0.0,
                                                                    showBottomBorder:
                                                                        true,
                                                                    minWidth:
                                                                        49.0,
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          );
                                                        }
                                                      },
                                                    ),
                                                  ),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (FFAppState().visibilityState == true)
                      Align(
                        alignment: AlignmentDirectional(0.71, -0.76),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              40.0, 0.0, 15.0, 0.0),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            decoration: BoxDecoration(
                              color: Color(0xFF4D4D4D),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 15.0, 20.0, 10.0),
                              child: Builder(
                                builder: (context) {
                                  final latestBankData = getJsonField(
                                    machineDownDipLatestBankDataResponse
                                        .jsonBody,
                                    r'''$.data''',
                                  ).toList();
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: latestBankData.length,
                                    itemBuilder:
                                        (context, latestBankDataIndex) {
                                      final latestBankDataItem =
                                          latestBankData[latestBankDataIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${getJsonField(
                                                  latestBankDataItem,
                                                  r'''$..bankName''',
                                                ).toString()} -',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: Colors.white,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        6.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  '${getJsonField(
                                                    latestBankDataItem,
                                                    r'''$..date''',
                                                  ).toString()},${getJsonField(
                                                    latestBankDataItem,
                                                    r'''$..time''',
                                                  ).toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            Color(0xFFB3B3B3),
                                                        fontSize: 12.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 0.1,
                                            color: Color(0x83FFFFFF),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
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
