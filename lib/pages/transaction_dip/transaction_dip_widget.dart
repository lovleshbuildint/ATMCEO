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
              Row(
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
                            FFAppState().update(() {
                              FFAppState().sortByFilterTab = true;
                              FFAppState().reasonFilterTab = false;
                              FFAppState().gradeFilterTab = false;
                              FFAppState().uptimeTrendFilterTab = false;
                              FFAppState().transactionTrendFilterTab = false;
                              FFAppState().downTimeFilterTab = false;
                              FFAppState().bankFilterTab = false;
                              FFAppState().locationFilterTab = false;
                            });
                            setState(() {
                              _model.shortCCValueController?.value = [
                                FFAppState().sortByFilter
                              ];
                            });
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FFAppState().sortByFilterTab
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
                            FFAppState().update(() {
                              FFAppState().sortByFilterTab = false;
                              FFAppState().reasonFilterTab = false;
                              FFAppState().gradeFilterTab = true;
                              FFAppState().uptimeTrendFilterTab = false;
                              FFAppState().transactionTrendFilterTab = false;
                              FFAppState().downTimeFilterTab = false;
                              FFAppState().bankFilterTab = false;
                              FFAppState().locationFilterTab = false;
                            });
                            setState(() {
                              _model.shortCCValueController?.value = [
                                FFAppState().gradeFilter
                              ];
                            });
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FFAppState().gradeFilterTab
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
                            FFAppState().update(() {
                              FFAppState().sortByFilterTab = false;
                              FFAppState().reasonFilterTab = false;
                              FFAppState().gradeFilterTab = false;
                              FFAppState().uptimeTrendFilterTab = false;
                              FFAppState().transactionTrendFilterTab = true;
                              FFAppState().downTimeFilterTab = false;
                              FFAppState().bankFilterTab = false;
                              FFAppState().locationFilterTab = false;
                            });
                            setState(() {
                              _model.shortCCValueController?.value = [
                                FFAppState().transactionTrendFilter
                              ];
                            });
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FFAppState().transactionTrendFilterTab
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
                            FFAppState().update(() {
                              FFAppState().sortByFilterTab = false;
                              FFAppState().reasonFilterTab = false;
                              FFAppState().gradeFilterTab = false;
                              FFAppState().uptimeTrendFilterTab = true;
                              FFAppState().transactionTrendFilterTab = false;
                              FFAppState().downTimeFilterTab = false;
                              FFAppState().bankFilterTab = false;
                              FFAppState().locationFilterTab = false;
                            });
                            setState(() {
                              _model.shortCCValueController?.value = [
                                FFAppState().uptimeTrendFilter
                              ];
                            });
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FFAppState().uptimeTrendFilterTab
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
                            FFAppState().update(() {
                              FFAppState().sortByFilterTab = false;
                              FFAppState().reasonFilterTab = false;
                              FFAppState().gradeFilterTab = false;
                              FFAppState().uptimeTrendFilterTab = false;
                              FFAppState().transactionTrendFilterTab = false;
                              FFAppState().downTimeFilterTab = true;
                              FFAppState().bankFilterTab = false;
                              FFAppState().locationFilterTab = false;
                            });
                            setState(() {
                              _model.shortCCValueController?.value = [
                                FFAppState().downTimeFilter
                              ];
                            });
                          },
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FFAppState().downTimeFilterTab
                                  ? Colors.white
                                  : Color(0xFFF2F2F2),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Down Time',
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
                                if (FFAppState().sortByFilterTab) {
                                  return 'Short By';
                                } else if (FFAppState().gradeFilterTab) {
                                  return 'Grade';
                                } else if (FFAppState()
                                    .transactionTrendFilterTab) {
                                  return 'Transaction Trand';
                                } else if (FFAppState().uptimeTrendFilterTab) {
                                  return 'Uptime Trend';
                                } else if (FFAppState().downTimeFilterTab) {
                                  return 'Down Time';
                                } else {
                                  return '';
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
                                    if (FFAppState().sortByFilterTab) {
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
                                    } else if (FFAppState().gradeFilterTab) {
                                      return [
                                        'Gold',
                                        'Silver',
                                        'Bronze',
                                        'Platinum'
                                      ];
                                    } else if (FFAppState()
                                        .transactionTrendFilterTab) {
                                      return [
                                        '-(100% - 80%)',
                                        '-(80% - 60%)',
                                        '-(60% - 40%)',
                                        '-(40% - 20%)',
                                        '-(20% - 0%)'
                                      ];
                                    } else if (FFAppState()
                                        .uptimeTrendFilterTab) {
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
                                        '0 - 2 Hrs',
                                        '2 - 4 Hrs',
                                        '4 - 8 Hrs',
                                        '48 - 72 Hrs',
                                        '> 72 Hrs'
                                      ];
                                    }
                                  }()
                                      .map((label) => ChipData(label))
                                      .toList(),
                                  onChanged: (val) async {
                                    setState(
                                        () => _model.shortCCValue = val?.first);
                                    if (FFAppState().sortByFilterTab) {
                                      FFAppState().update(() {
                                        FFAppState().sortByFilter =
                                            _model.shortCCValue!;
                                      });
                                    } else {
                                      if (FFAppState().gradeFilterTab) {
                                        FFAppState().update(() {
                                          FFAppState().gradeFilter =
                                              _model.shortCCValue!;
                                        });
                                      } else {
                                        if (FFAppState()
                                            .transactionTrendFilterTab) {
                                          FFAppState().update(() {
                                            FFAppState()
                                                    .transactionTrendFilter =
                                                _model.shortCCValue!;
                                          });
                                        } else {
                                          if (FFAppState()
                                              .uptimeTrendFilterTab) {
                                            FFAppState().update(() {
                                              FFAppState().uptimeTrendFilter =
                                                  _model.shortCCValue!;
                                            });
                                          } else {
                                            if (FFAppState()
                                                .downTimeFilterTab) {
                                              FFAppState().update(() {
                                                FFAppState().downTimeFilter =
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
                                  controller: _model.shortCCValueController ??=
                                      FormFieldController<List<String>>(
                                    [
                                      () {
                                        if (FFAppState().sortByFilterTab) {
                                          return FFAppState().sortByFilter;
                                        } else if (FFAppState()
                                            .gradeFilterTab) {
                                          return FFAppState().gradeFilter;
                                        } else if (FFAppState()
                                            .transactionTrendFilterTab) {
                                          return FFAppState()
                                              .transactionTrendFilter;
                                        } else if (FFAppState()
                                            .uptimeTrendFilterTab) {
                                          return FFAppState().uptimeTrendFilter;
                                        } else {
                                          return '[\"0 - 2 Hrs\", \"2 - 4 Hrs\", \"4 - 8 Hrs\", \"48 - 72 Hrs\", \"> 72 Hrs\"]';
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
                              FFAppState().sortByFilter,
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                          Text(
                            FFAppState().gradeFilter,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            FFAppState().transactionTrendFilter,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            FFAppState().uptimeTrendFilter,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            FFAppState().downTimeFilter,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            'Changes Done................',
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
                          setState(() {
                            _model.shortCCValueController?.reset();
                          });
                          setState(() {
                            FFAppState().deleteSortByFilter();
                            FFAppState().sortByFilter = '';

                            FFAppState().deleteGradeFilter();
                            FFAppState().gradeFilter = '';

                            FFAppState().deleteReasonFilter();
                            FFAppState().reasonFilter = '';

                            FFAppState().deleteTransactionTrendFilter();
                            FFAppState().transactionTrendFilter = '';

                            FFAppState().deleteUptimeTrendFilter();
                            FFAppState().uptimeTrendFilter = '';

                            FFAppState().deleteDownTimeFilter();
                            FFAppState().downTimeFilter = '';

                            FFAppState().deleteBankFilter();
                            FFAppState().bankFilter = '';

                            FFAppState().deleteLocationFilter();
                            FFAppState().locationFilter = '';

                            FFAppState().sortByFilterTab = true;
                            FFAppState().reasonFilterTab = false;
                            FFAppState().gradeFilterTab = false;
                            FFAppState().uptimeTrendFilterTab = false;
                            FFAppState().transactionTrendFilterTab = false;
                            FFAppState().downTimeFilterTab = false;
                            FFAppState().bankFilterTab = false;
                            FFAppState().locationFilterTab = false;
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
