import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'transaction_dip_model.dart';
export 'transaction_dip_model.dart';

class TransactionDipWidget extends StatefulWidget {
  const TransactionDipWidget({Key? key}) : super(key: key);

  @override
  _TransactionDipWidgetState createState() => _TransactionDipWidgetState();
}

class _TransactionDipWidgetState extends State<TransactionDipWidget> {
  late TransactionDipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransactionDipModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 45.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Filter',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Colors.black,
                              fontSize: 16.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                          FFAppState().update(() {
                            FFAppState().filter5 = false;
                            FFAppState().filter4 = false;
                            FFAppState().filter3 = false;
                            FFAppState().filter2 = false;
                            FFAppState().filter1 = true;
                            FFAppState().deleteFilter1value();
                            FFAppState().filter1value = '';

                            FFAppState().deleteFilter2value();
                            FFAppState().filter2value = '';

                            FFAppState().deleteFilter3value();
                            FFAppState().filter3value = '';

                            FFAppState().deleteFilter4value();
                            FFAppState().filter4value = '';

                            FFAppState().deleteFilter5value();
                            FFAppState().filter5value = '';
                          });
                        },
                        child: Text(
                          'Close',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: Color(0xFFFF0026),
                                fontSize: 16.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().update(() {
                    FFAppState().filter5 = false;
                    FFAppState().filter4 = false;
                    FFAppState().filter3 = false;
                    FFAppState().filter2 = false;
                    FFAppState().filter1 = true;
                    FFAppState().deleteFilter1value();
                    FFAppState().filter1value = '';

                    FFAppState().deleteFilter2value();
                    FFAppState().filter2value = '';

                    FFAppState().deleteFilter3value();
                    FFAppState().filter3value = '';

                    FFAppState().deleteFilter4value();
                    FFAppState().filter4value = '';

                    FFAppState().deleteFilter5value();
                    FFAppState().filter5value = '';
                  });
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F2F2),
                      ),
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                FFAppState().filter1 = true;
                                FFAppState().filter2 = false;
                                FFAppState().filter3 = false;
                                FFAppState().filter4 = false;
                                FFAppState().filter5 = false;
                              });
                              setState(() {
                                _model.shortCCValueController?.value = [
                                  FFAppState().filter1value
                                ];
                              });
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FFAppState().filter1
                                    ? Colors.white
                                    : Color(0xFFF2F2F2),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Sort By',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xBACD737373),
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                FFAppState().filter1 = false;
                                FFAppState().filter2 = true;
                                FFAppState().filter3 = false;
                                FFAppState().filter4 = false;
                                FFAppState().filter5 = false;
                              });
                              setState(() {
                                _model.shortCCValueController?.value = [
                                  FFAppState().filter2value
                                ];
                              });
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FFAppState().filter2
                                    ? Colors.white
                                    : Color(0xFFF2F2F2),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Grade',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xBACD737373),
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                FFAppState().filter1 = false;
                                FFAppState().filter2 = false;
                                FFAppState().filter3 = true;
                                FFAppState().filter4 = false;
                                FFAppState().filter5 = false;
                              });
                              setState(() {
                                _model.shortCCValueController?.value = [
                                  FFAppState().filter3value
                                ];
                              });
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FFAppState().filter3
                                    ? Colors.white
                                    : Color(0xFFF2F2F2),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Transaction Trend',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xBACD737373),
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                FFAppState().filter1 = false;
                                FFAppState().filter2 = false;
                                FFAppState().filter3 = false;
                                FFAppState().filter4 = true;
                                FFAppState().filter5 = false;
                              });
                              setState(() {
                                _model.shortCCValueController?.value = [
                                  FFAppState().filter4value
                                ];
                              });
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FFAppState().filter4
                                    ? Colors.white
                                    : Color(0xFFF2F2F2),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Uptime Trend',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xBACD737373),
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                FFAppState().filter1 = false;
                                FFAppState().filter2 = false;
                                FFAppState().filter3 = false;
                                FFAppState().filter4 = false;
                                FFAppState().filter5 = true;
                              });
                              setState(() {
                                _model.shortCCValueController?.value = [
                                  FFAppState().filter5value
                                ];
                              });
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FFAppState().filter5
                                    ? Colors.white
                                    : Color(0xFFF2F2F2),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Downtime Trend',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xBACD737373),
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 15.0, 0.0, 0.0),
                              child: Text(
                                () {
                                  if (FFAppState().filter1) {
                                    return 'Short By';
                                  } else if (FFAppState().filter2) {
                                    return 'Grade';
                                  } else if (FFAppState().filter3) {
                                    return 'Transaction Trand';
                                  } else if (FFAppState().filter4) {
                                    return 'Uptime Trend';
                                  } else {
                                    return 'Down Time';
                                  }
                                }(),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 0.0, 0.0),
                              child: Wrap(
                                spacing: 0.0,
                                runSpacing: 0.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  FlutterFlowChoiceChips(
                                    options: () {
                                      if (FFAppState().filter1) {
                                        return [
                                          'Grade: High to Low',
                                          'Grade: Low to High',
                                          'Transaction: High to Low',
                                          'Transaction: Low to High',
                                          'Uptime: High to Low',
                                          'Uptime: Low to High',
                                          'Downtime: High to Low',
                                          'Downtime: Low to High'
                                        ];
                                      } else if (FFAppState().filter2) {
                                        return [
                                          'Gold',
                                          'Silver',
                                          'Bronze',
                                          'Platinum'
                                        ];
                                      } else if (FFAppState().filter3) {
                                        return [
                                          'Less Than -100%',
                                          '-(100% - 80%)',
                                          '-(80% - 60%)',
                                          '-(60% - 40%)',
                                          '-(20% - 0%)',
                                          '+(20% - 40%)',
                                          '+(40% - 60%)',
                                          '+(60% - 80%)',
                                          '+(80% - 100%)',
                                          'More than +100%'
                                        ];
                                      } else if (FFAppState().filter4) {
                                        return [
                                          'Less Than -100%',
                                          '-(100% - 80%)',
                                          '-(80% - 60%)',
                                          '-(60% - 40%)',
                                          '-(20% - 0%)',
                                          '+(20% - 40%)',
                                          '+(40% - 60%)',
                                          '+(60% - 80%)',
                                          '+(80% - 100%)',
                                          'More than +100%'
                                        ];
                                      } else {
                                        return [
                                          'Less Than -100%',
                                          '-(100% - 80%)',
                                          '-(80% - 60%)',
                                          '-(60% - 40%)',
                                          '-(20% - 0%)',
                                          '+(20% - 40%)',
                                          '+(40% - 60%)',
                                          '+(60% - 80%)',
                                          '+(80% - 100%)',
                                          'More than +100%'
                                        ];
                                      }
                                    }()
                                        .map((label) => ChipData(label))
                                        .toList(),
                                    onChanged: (val) async {
                                      setState(() =>
                                          _model.shortCCValue = val?.first);
                                      if (FFAppState().filter1) {
                                        FFAppState().update(() {
                                          FFAppState().filter1value =
                                              _model.shortCCValue!;
                                        });
                                      } else {
                                        if (FFAppState().filter2) {
                                          FFAppState().update(() {
                                            FFAppState().filter2value =
                                                _model.shortCCValue!;
                                          });
                                        } else {
                                          if (FFAppState().filter3) {
                                            FFAppState().update(() {
                                              FFAppState().filter3value =
                                                  _model.shortCCValue!;
                                            });
                                          } else {
                                            if (FFAppState().filter4) {
                                              FFAppState().update(() {
                                                FFAppState().filter4value =
                                                    _model.shortCCValue!;
                                              });
                                            } else {
                                              if (FFAppState().filter5) {
                                                FFAppState().update(() {
                                                  FFAppState().filter5value =
                                                      _model.shortCCValue!;
                                                });
                                              }
                                            }
                                          }
                                        }
                                      }
                                    },
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor: Color(0xFFFF0026),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Color(0xFF4D4D4D),
                                            fontSize: 16.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      iconSize: 18.0,
                                      elevation: 1.0,
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                      iconColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      iconSize: 18.0,
                                      elevation: 0.0,
                                      borderColor: Color(0xFFF2F2F2),
                                      borderWidth: 2.0,
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    chipSpacing: 12.0,
                                    rowSpacing: 12.0,
                                    multiselect: false,
                                    initialized: _model.shortCCValue != null,
                                    alignment: WrapAlignment.start,
                                    controller:
                                        _model.shortCCValueController ??=
                                            FormFieldController<List<String>>(
                                      [
                                        () {
                                          if (FFAppState().filter1) {
                                            return FFAppState().filter1value;
                                          } else if (FFAppState().filter2) {
                                            return FFAppState().filter2value;
                                          } else if (FFAppState().filter3) {
                                            return FFAppState().filter3value;
                                          } else if (FFAppState().filter4) {
                                            return FFAppState().filter4value;
                                          } else {
                                            return FFAppState().filter5value;
                                          }
                                        }()
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: Text(
                                FFAppState().filter1value,
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            Text(
                              FFAppState().filter2value,
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                            Text(
                              FFAppState().filter3value,
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                            Text(
                              FFAppState().filter4value,
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                            Text(
                              FFAppState().filter5value,
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                            Text(
                              'Changes Done................',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 70.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 13.0, 0.0, 13.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Show Result',
                        options: FFButtonOptions(
                          height: double.infinity,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFFF0026),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Colors.white,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          15.0, 13.0, 16.0, 13.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          FFAppState().update(() {
                            FFAppState().deleteFilter1value();
                            FFAppState().filter1value = '';

                            FFAppState().deleteFilter2value();
                            FFAppState().filter2value = '';

                            FFAppState().deleteFilter3value();
                            FFAppState().filter3value = '';

                            FFAppState().deleteFilter4value();
                            FFAppState().filter4value = '';

                            FFAppState().deleteFilter5value();
                            FFAppState().filter5value = '';
                          });
                          setState(() {
                            _model.shortCCValueController?.reset();
                          });
                        },
                        text: 'Clear Filter',
                        options: FFButtonOptions(
                          height: double.infinity,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.white,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: Color(0xFFFF0026),
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleSmallFamily),
                              ),
                          borderSide: BorderSide(
                            color: Color(0xFFFF0026),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
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
    );
  }
}
