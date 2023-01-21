import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'measurement.dart' as measurement;

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key? key,
    this.projectdocument,
  }) : super(key: key);

  final ProjectCaseRecord? projectdocument;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 260.ms,
          duration: 1190.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };
  PageController? pageViewController;
  TextEditingController? textController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF0B0B0B),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Color(0xFF0B0B0B),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (FFAppState().fullscreen == false)
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                                height: 35,
                                decoration: BoxDecoration(),
                                child: TextFormField(
                                  controller: textController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Color(0xFF9C9C9C),
                                          fontWeight: FontWeight.w300,
                                        ),
                                    hintText: 'Search',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Color(0xFF9C9C9C),
                                          fontWeight: FontWeight.w300,
                                        ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(200),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(200),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(200),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(200),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF1F1F1F),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            7, 7, 7, 7),
                                    prefixIcon: Icon(
                                      Icons.search_sharp,
                                      color: Color(0xFF888888),
                                      size: 20,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFF9C9C9C),
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 15),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 20, 0),
                                        child: Image.asset(
                                          'assets/images/Frame.png',
                                          width: 28,
                                          height: 28,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Image.asset(
                                              'assets/images/Frame_(7).png',
                                              width: 28,
                                              height: 28,
                                              fit: BoxFit.cover,
                                            ),
                                            Container(
                                              height: 40,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.check_sharp,
                                                    color: Colors.white,
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Image.asset(
                                              'assets/images/Frame_(5).png',
                                              width: 28,
                                              height: 28,
                                              fit: BoxFit.cover,
                                            ),
                                            Container(
                                              height: 40,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.check_sharp,
                                                    color: Colors.white,
                                                    size: 24,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 0, 0),
                                        child: Container(
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF090909),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 20, 0),
                                        child: Text(
                                          'LumoScan / ${widget.projectdocument!.title}',
                                          textAlign: TextAlign.end,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Inter',
                                                color: Color(0xFFC2C2C2),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.25,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 15, 15, 15),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 20, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            FFAppState().update(() {
                                              FFAppState().fullscreen = true;
                                            });
                                          },
                                          child: Image.asset(
                                            'assets/images/Frame_(10).png',
                                            width: 28,
                                            height: 28,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 20, 0),
                                        child: Image.asset(
                                          'assets/images/Frame_(11).png',
                                          width: 28,
                                          height: 28,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 20, 0),
                                        child: Image.asset(
                                          'assets/images/Frame_(12).png',
                                          width: 28,
                                          height: 28,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 0, 0, 0),
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF1D1D1D),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Color(0xFF4A4A4A),
                                              width: 2,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'DF',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              Color(0xFFB4B4B4),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w200,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/images/Frame_(13).png',
                                        width: 28,
                                        height: 28,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      if (FFAppState().fullscreen == true)
                        Align(
                          alignment: AlignmentDirectional(1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                            child: InkWell(
                              onTap: () async {
                                FFAppState().update(() {
                                  FFAppState().fullscreen = false;
                                });
                              },
                              child: Image.asset(
                                'assets/images/Frame_(3).png',
                                width: 28,
                                height: 28,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 20, 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.18,
                                    height:
                                        MediaQuery.of(context).size.height * 1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        width: 3,
                                      ),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 30),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 200,
                                              decoration: BoxDecoration(
                                                color: Color(0xCE1A1A1A),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 30),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 200,
                                              decoration: BoxDecoration(
                                                color: Color(0xCE1A1A1A),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 30),
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 200,
                                              decoration: BoxDecoration(
                                                color: Color(0xCE1A1A1A),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height:
                                      MediaQuery.of(context).size.height * 1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color(0xFF2A2A2A),
                                      width: 3,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 20, 20, 20),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            decoration: BoxDecoration(),
                                            child: Container(
                                              width: double.infinity,
                                              height: 500,
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 50),
                                                child: PageView(
                                                  controller:
                                                      pageViewController ??=
                                                          PageController(
                                                              initialPage: min(
                                                                  valueOrDefault<
                                                                      int>(
                                                                    FFAppState()
                                                                        .BodyCarouselIndex,
                                                                    0,
                                                                  ),
                                                                  4)),
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  children: [
                                                    SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        20),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Lottie.network(
                                                                  'https://assets5.lottiefiles.com/packages/lf20_klsab29v.json',
                                                                  width: 20,
                                                                  height: 35,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  animate: true,
                                                                ),
                                                                Container(
                                                                  width: 100,
                                                                  height: 40,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await pageViewController
                                                                              ?.animateToPage(
                                                                            4,
                                                                            duration:
                                                                                Duration(milliseconds: 500),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_back_sharp,
                                                                          color:
                                                                              Color(0xFFCDCDCD),
                                                                          size:
                                                                              28,
                                                                        ),
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await pageViewController
                                                                              ?.nextPage(
                                                                            duration:
                                                                                Duration(milliseconds: 300),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_forward_sharp,
                                                                          color:
                                                                              Color(0xFFCDCDCD),
                                                                          size:
                                                                              28,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          1.5)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;

                                                                    measurement.updateDocument(
                                                                        imageBodyDocumentsRecord
                                                                            .reference);
                                                                  });
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            20),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            20),
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    imageBodyDocumentsRecord!
                                                                        .image!,
                                                                    width: 250,
                                                                    height: 250,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          1.4)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;

                                                                    measurement.updateDocument(
                                                                        imageBodyDocumentsRecord
                                                                            .reference);
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          1.3)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;

                                                                    measurement.updateDocument(
                                                                        imageBodyDocumentsRecord
                                                                            .reference);
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          1.2)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;

                                                                    measurement.updateDocument(
                                                                        imageBodyDocumentsRecord
                                                                            .reference);
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          1.1)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;

                                                                    measurement.updateDocument(
                                                                        imageBodyDocumentsRecord
                                                                            .reference);
                                                                  });
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            20),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            20),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            0),
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    imageBodyDocumentsRecord!
                                                                        .image!,
                                                                    width: 250,
                                                                    height: 250,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        20),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Lottie.network(
                                                                  'https://assets5.lottiefiles.com/packages/lf20_klsab29v.json',
                                                                  width: 20,
                                                                  height: 35,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  animate: true,
                                                                ),
                                                                Container(
                                                                  width: 100,
                                                                  height: 40,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await pageViewController
                                                                              ?.animateToPage(
                                                                            4,
                                                                            duration:
                                                                                Duration(milliseconds: 500),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_back_sharp,
                                                                          color:
                                                                              Color(0xFFCDCDCD),
                                                                          size:
                                                                              28,
                                                                        ),
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await pageViewController
                                                                              ?.nextPage(
                                                                            duration:
                                                                                Duration(milliseconds: 300),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_forward_sharp,
                                                                          color:
                                                                              Color(0xFFCDCDCD),
                                                                          size:
                                                                              28,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          2.5)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;

                                                                    measurement.updateDocument(
                                                                        imageBodyDocumentsRecord
                                                                            .reference);
                                                                  });
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            20),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            20),
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    imageBodyDocumentsRecord!
                                                                        .image!,
                                                                    width: 250,
                                                                    height: 250,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          2.4)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;

                                                                    measurement.updateDocument(
                                                                        imageBodyDocumentsRecord
                                                                            .reference);
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          2.3)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;

                                                                    measurement.updateDocument(
                                                                        imageBodyDocumentsRecord
                                                                            .reference);
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          2.4)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;

                                                                    measurement.updateDocument(
                                                                        imageBodyDocumentsRecord
                                                                            .reference);
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          2.5)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;

                                                                    measurement.updateDocument(
                                                                        imageBodyDocumentsRecord
                                                                            .reference);
                                                                  });
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            20),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            20),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            0),
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    imageBodyDocumentsRecord!
                                                                        .image!,
                                                                    width: 250,
                                                                    height: 250,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        20),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Lottie.network(
                                                                  'https://assets5.lottiefiles.com/packages/lf20_klsab29v.json',
                                                                  width: 20,
                                                                  height: 35,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  animate: true,
                                                                ),
                                                                Container(
                                                                  width: 100,
                                                                  height: 40,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await pageViewController
                                                                              ?.animateToPage(
                                                                            4,
                                                                            duration:
                                                                                Duration(milliseconds: 500),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_back_sharp,
                                                                          color:
                                                                              Color(0xFFCDCDCD),
                                                                          size:
                                                                              28,
                                                                        ),
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await pageViewController
                                                                              ?.nextPage(
                                                                            duration:
                                                                                Duration(milliseconds: 300),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_forward_sharp,
                                                                          color:
                                                                              Color(0xFFCDCDCD),
                                                                          size:
                                                                              28,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          3.5)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            20),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            20),
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    imageBodyDocumentsRecord!
                                                                        .image!,
                                                                    width: 250,
                                                                    height: 250,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          3.4)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          3.3)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          3.2)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          3.1)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            20),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            20),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            0),
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    imageBodyDocumentsRecord!
                                                                        .image!,
                                                                    width: 250,
                                                                    height: 250,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        20),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Lottie.network(
                                                                  'https://assets5.lottiefiles.com/packages/lf20_klsab29v.json',
                                                                  width: 20,
                                                                  height: 35,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  animate: true,
                                                                ),
                                                                Container(
                                                                  width: 100,
                                                                  height: 40,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await pageViewController
                                                                              ?.animateToPage(
                                                                            4,
                                                                            duration:
                                                                                Duration(milliseconds: 500),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_back_sharp,
                                                                          color:
                                                                              Color(0xFFCDCDCD),
                                                                          size:
                                                                              28,
                                                                        ),
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await pageViewController
                                                                              ?.nextPage(
                                                                            duration:
                                                                                Duration(milliseconds: 300),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_forward_sharp,
                                                                          color:
                                                                              Color(0xFFCDCDCD),
                                                                          size:
                                                                              28,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          4.5)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            20),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            20),
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    imageBodyDocumentsRecord!
                                                                        .image!,
                                                                    width: 250,
                                                                    height: 250,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          4.4)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          4.3)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          4.2)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          4.1)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            20),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            20),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            0),
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    imageBodyDocumentsRecord!
                                                                        .image!,
                                                                    width: 250,
                                                                    height: 250,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        20),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Lottie.network(
                                                                  'https://assets5.lottiefiles.com/packages/lf20_klsab29v.json',
                                                                  width: 20,
                                                                  height: 35,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  animate: true,
                                                                ),
                                                                Container(
                                                                  width: 100,
                                                                  height: 40,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await pageViewController
                                                                              ?.animateToPage(
                                                                            4,
                                                                            duration:
                                                                                Duration(milliseconds: 500),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_back_sharp,
                                                                          color:
                                                                              Color(0xFFCDCDCD),
                                                                          size:
                                                                              28,
                                                                        ),
                                                                      ),
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          await pageViewController
                                                                              ?.animateToPage(
                                                                            0,
                                                                            duration:
                                                                                Duration(milliseconds: 500),
                                                                            curve:
                                                                                Curves.ease,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_forward_sharp,
                                                                          color:
                                                                              Color(0xFFCDCDCD),
                                                                          size:
                                                                              28,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          5.5)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            20),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            20),
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    imageBodyDocumentsRecord!
                                                                        .image!,
                                                                    width: 250,
                                                                    height: 250,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          5.4)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          5.3)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          5.2)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child: Image
                                                                    .network(
                                                                  imageBodyDocumentsRecord!
                                                                      .image!,
                                                                  width: 250,
                                                                  height: 250,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  BodyDocumentsRecord>>(
                                                            stream:
                                                                queryBodyDocumentsRecord(
                                                              queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord
                                                                  .where(
                                                                      'PositionType',
                                                                      isEqualTo:
                                                                          5.1)
                                                                  .where(
                                                                      'project',
                                                                      isEqualTo: widget
                                                                          .projectdocument!
                                                                          .reference),
                                                              singleRecord:
                                                                  true,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<BodyDocumentsRecord>
                                                                  imageBodyDocumentsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              // Return an empty Container when the item does not exist.
                                                              if (snapshot.data!
                                                                  .isEmpty) {
                                                                return Container();
                                                              }
                                                              final imageBodyDocumentsRecord =
                                                                  imageBodyDocumentsRecordList
                                                                          .isNotEmpty
                                                                      ? imageBodyDocumentsRecordList
                                                                          .first
                                                                      : null;
                                                              return InkWell(
                                                                onTap:
                                                                    () async {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .focusedbodydocument =
                                                                        imageBodyDocumentsRecord!
                                                                            .reference;
                                                                  });
                                                                },
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            20),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            20),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            0),
                                                                  ),
                                                                  child: Image
                                                                      .network(
                                                                    imageBodyDocumentsRecord!
                                                                        .image!,
                                                                    width: 250,
                                                                    height: 250,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        60, 0, 0, 0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Change Capture Angles',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Color(0xFF828282),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 20, 0),
                                                  child: StreamBuilder<
                                                      List<
                                                          BodyDocumentsRecord>>(
                                                    stream:
                                                        queryBodyDocumentsRecord(
                                                      queryBuilder: (bodyDocumentsRecord) =>
                                                          bodyDocumentsRecord
                                                              .where(
                                                                  'PositionType',
                                                                  isEqualTo:
                                                                      1.5)
                                                              .where('project',
                                                                  isEqualTo: widget
                                                                      .projectdocument!
                                                                      .reference),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<BodyDocumentsRecord>
                                                          imageBodyDocumentsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final imageBodyDocumentsRecord =
                                                          imageBodyDocumentsRecordList
                                                                  .isNotEmpty
                                                              ? imageBodyDocumentsRecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                .BodyCarouselIndex = 0;
                                                          });

                                                          context.pushNamed(
                                                              'HomePage');
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Image.network(
                                                            imageBodyDocumentsRecord!
                                                                .image!,
                                                            width: 70,
                                                            height: 70,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 20, 0),
                                                  child: StreamBuilder<
                                                      List<
                                                          BodyDocumentsRecord>>(
                                                    stream:
                                                        queryBodyDocumentsRecord(
                                                      queryBuilder: (bodyDocumentsRecord) =>
                                                          bodyDocumentsRecord
                                                              .where(
                                                                  'PositionType',
                                                                  isEqualTo:
                                                                      2.5)
                                                              .where('project',
                                                                  isEqualTo: widget
                                                                      .projectdocument!
                                                                      .reference),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<BodyDocumentsRecord>
                                                          imageBodyDocumentsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final imageBodyDocumentsRecord =
                                                          imageBodyDocumentsRecordList
                                                                  .isNotEmpty
                                                              ? imageBodyDocumentsRecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                .BodyCarouselIndex = 1;
                                                          });

                                                          context.pushNamed(
                                                              'HomePage');
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Image.network(
                                                            imageBodyDocumentsRecord!
                                                                .image!,
                                                            width: 70,
                                                            height: 70,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 20, 0),
                                                  child: StreamBuilder<
                                                      List<
                                                          BodyDocumentsRecord>>(
                                                    stream:
                                                        queryBodyDocumentsRecord(
                                                      queryBuilder: (bodyDocumentsRecord) =>
                                                          bodyDocumentsRecord
                                                              .where(
                                                                  'PositionType',
                                                                  isEqualTo:
                                                                      3.5)
                                                              .where('project',
                                                                  isEqualTo: widget
                                                                      .projectdocument!
                                                                      .reference),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<BodyDocumentsRecord>
                                                          imageBodyDocumentsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final imageBodyDocumentsRecord =
                                                          imageBodyDocumentsRecordList
                                                                  .isNotEmpty
                                                              ? imageBodyDocumentsRecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                .BodyCarouselIndex = 2;
                                                          });

                                                          context.pushNamed(
                                                              'HomePage');
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Image.network(
                                                            imageBodyDocumentsRecord!
                                                                .image!,
                                                            width: 70,
                                                            height: 70,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 20, 0),
                                                  child: StreamBuilder<
                                                      List<
                                                          BodyDocumentsRecord>>(
                                                    stream:
                                                        queryBodyDocumentsRecord(
                                                      queryBuilder: (bodyDocumentsRecord) =>
                                                          bodyDocumentsRecord
                                                              .where(
                                                                  'PositionType',
                                                                  isEqualTo:
                                                                      4.5)
                                                              .where('project',
                                                                  isEqualTo: widget
                                                                      .projectdocument!
                                                                      .reference),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<BodyDocumentsRecord>
                                                          imageBodyDocumentsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final imageBodyDocumentsRecord =
                                                          imageBodyDocumentsRecordList
                                                                  .isNotEmpty
                                                              ? imageBodyDocumentsRecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                .BodyCarouselIndex = 3;
                                                          });

                                                          context.pushNamed(
                                                              'HomePage');
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Image.network(
                                                            imageBodyDocumentsRecord!
                                                                .image!,
                                                            width: 70,
                                                            height: 70,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 20, 0),
                                                  child: StreamBuilder<
                                                      List<
                                                          BodyDocumentsRecord>>(
                                                    stream:
                                                        queryBodyDocumentsRecord(
                                                      queryBuilder: (bodyDocumentsRecord) =>
                                                          bodyDocumentsRecord
                                                              .where(
                                                                  'PositionType',
                                                                  isEqualTo:
                                                                      5.5)
                                                              .where('project',
                                                                  isEqualTo: widget
                                                                      .projectdocument!
                                                                      .reference),
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50,
                                                            height: 50,
                                                            child:
                                                                CircularProgressIndicator(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryColor,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<BodyDocumentsRecord>
                                                          imageBodyDocumentsRecordList =
                                                          snapshot.data!;
                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final imageBodyDocumentsRecord =
                                                          imageBodyDocumentsRecordList
                                                                  .isNotEmpty
                                                              ? imageBodyDocumentsRecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        onTap: () async {
                                                          setState(() {
                                                            FFAppState()
                                                                .BodyCarouselIndex = 4;
                                                          });

                                                          context.pushNamed(
                                                              'HomePage');
                                                        },
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Image.network(
                                                            imageBodyDocumentsRecord!
                                                                .image!,
                                                            width: 70,
                                                            height: 70,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: StreamBuilder<
                                                BodyDocumentsRecord>(
                                              stream: BodyDocumentsRecord
                                                  .getDocument(FFAppState()
                                                      .focusedbodydocument!),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 50,
                                                      child:
                                                          CircularProgressIndicator(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                final containerBodyDocumentsRecord =
                                                    snapshot.data!;
                                                measurement.updateDynamicImageUrl(
                                                    containerBodyDocumentsRecord
                                                        .image!);

                                                return Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.6,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(
                                                    children: [
                                                      StreamBuilder<
                                                          List<
                                                              AnnotationsRecord>>(
                                                        stream:
                                                            queryAnnotationsRecord(
                                                          queryBuilder: (annotationsRecord) =>
                                                              annotationsRecord.where(
                                                                  'BodyDocument',
                                                                  isEqualTo:
                                                                      FFAppState()
                                                                          .focusedbodydocument),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          //Add a throw statement at the end for the widget

                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50,
                                                                height: 50,
                                                                child:
                                                                    CircularProgressIndicator(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<AnnotationsRecord>
                                                              containerAnnotationsRecordList =
                                                              snapshot.data!;

                                                          if (containerAnnotationsRecordList
                                                              .isNotEmpty) {
                                                            List<Offset>
                                                                offsets = [];

                                                            for (int i = 0;
                                                                i <
                                                                    containerAnnotationsRecordList[0]
                                                                            .points!
                                                                            .length -
                                                                        1;
                                                                i += 2) {
                                                              offsets.add(Offset(
                                                                  containerAnnotationsRecordList[
                                                                              0]
                                                                          .points![
                                                                      i],
                                                                  containerAnnotationsRecordList[
                                                                              0]
                                                                          .points![
                                                                      i + 1]));
                                                            }

                                                            return Container(
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  1,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child:
                                                                  CustomPaint(
                                                                painter: measurement
                                                                    .LinePainter(
                                                                        offsets),
                                                              ),
                                                            );
                                                          }

                                                          return Container();
                                                        },
                                                      ),
                                                      Container(
                                                          width: 2000,
                                                          height: 500,
                                                          child: measurement
                                                              .MyApp()),
                                                    ],
                                                  ),
                                                );
                                              },
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
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
