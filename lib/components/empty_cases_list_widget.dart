import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmptyCasesListWidget extends StatefulWidget {
  const EmptyCasesListWidget({Key? key}) : super(key: key);

  @override
  _EmptyCasesListWidgetState createState() => _EmptyCasesListWidgetState();
}

class _EmptyCasesListWidgetState extends State<EmptyCasesListWidget> {
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
        width: 850,
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Case List Currently Empty',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Inter',
                            color: Color(0xFFDFDFDF),
                            fontSize: 40,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w100,
                            lineHeight: 1.5,
                          ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Text(
                        'Begin documenting a new body imaging case by using the card button the left side.',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Inter',
                              color: Color(0xFFDFDFDF),
                              fontSize: 20,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w100,
                              lineHeight: 1.5,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
