import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmptyCasesListCopyWidget extends StatefulWidget {
  const EmptyCasesListCopyWidget({Key? key}) : super(key: key);

  @override
  _EmptyCasesListCopyWidgetState createState() =>
      _EmptyCasesListCopyWidgetState();
}

class _EmptyCasesListCopyWidgetState extends State<EmptyCasesListCopyWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
      child: Container(
        width: 900,
        decoration: BoxDecoration(
          color: Color(0xFF151515),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 25, 25, 25),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Case List Currently Empty',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFFDFDFDF),
                                      fontSize: 35,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w100,
                                      lineHeight: 1.5,
                                    ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Text(
                              'Begin documenting a new body im',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Color(0xFFDFDFDF),
                                    fontSize: 20,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.w100,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                            child: Text(
                              'Generated on 10/12/2022',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Color(0xFFDFDFDF),
                                    fontSize: 20,
                                    letterSpacing: 2,
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.italic,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Image.network(
                          'https://picsum.photos/seed/917/600',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Image.network(
                        'https://picsum.photos/seed/917/600',
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://picsum.photos/seed/917/600',
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://picsum.photos/seed/917/600',
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      Image.network(
                        'https://picsum.photos/seed/917/600',
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
