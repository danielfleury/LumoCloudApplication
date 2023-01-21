import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/empty_cases_list_widget.dart';
import '../components/new_case_bottom_sheet_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class ProjectHubWidget extends StatefulWidget {
  const ProjectHubWidget({Key? key}) : super(key: key);

  @override
  _ProjectHubWidgetState createState() => _ProjectHubWidgetState();
}

class _ProjectHubWidgetState extends State<ProjectHubWidget> {
  ProjectCaseRecord? preProject;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF0E0E0E),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Color(0xFF080808),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(60, 60, 60, 60),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/Frame_143.png',
                              width: 130,
                              height: 130,
                              fit: BoxFit.contain,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text(
                                'Case Management',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFFA1A1A1),
                                      fontSize: 60,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w100,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Text(
                            'Access, share, and create scanning documents',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFF7E7E7E),
                                      fontSize: 30,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w200,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Lottie.network(
                            'https://assets9.lottiefiles.com/packages/lf20_1yjEgM.json',
                            width: 200,
                            height: 50,
                            fit: BoxFit.cover,
                            animate: true,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    final projectCaseCreateData = {
                                      'administrators': [currentUserReference],
                                    };
                                    var projectCaseRecordReference =
                                        ProjectCaseRecord.collection.doc();
                                    await projectCaseRecordReference
                                        .set(projectCaseCreateData);
                                    preProject =
                                        ProjectCaseRecord.getDocumentFromData(
                                            projectCaseCreateData,
                                            projectCaseRecordReference);
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1,
                                            child: NewCaseBottomSheetWidget(
                                              caseparameter: preProject,
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 300,
                                    height: 300,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF181818),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30, 30, 30, 30),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Create New Case',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Inter',
                                                  color: Color(0xFFDFDFDF),
                                                  fontSize: 30,
                                                  letterSpacing: 2,
                                                  fontWeight: FontWeight.w100,
                                                  lineHeight: 1.5,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: SvgPicture.asset(
                                              'assets/images/Frame_(10).svg',
                                              width: 80,
                                              height: 80,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: StreamBuilder<List<ProjectCaseRecord>>(
                                    stream: queryProjectCaseRecord(
                                      queryBuilder: (projectCaseRecord) =>
                                          projectCaseRecord
                                              .where('administrators',
                                                  arrayContains:
                                                      currentUserReference)
                                              .orderBy('CreationDate',
                                                  descending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<ProjectCaseRecord>
                                          rowProjectCaseRecordList =
                                          snapshot.data!;
                                      if (rowProjectCaseRecordList.isEmpty) {
                                        return EmptyCasesListWidget();
                                      }
                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              rowProjectCaseRecordList.length,
                                              (rowIndex) {
                                            final rowProjectCaseRecord =
                                                rowProjectCaseRecordList[
                                                    rowIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 20, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'HomePage',
                                                    queryParams: {
                                                      'projectdocument':
                                                          serializeParam(
                                                        rowProjectCaseRecord,
                                                        ParamType.Document,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      'projectdocument':
                                                          rowProjectCaseRecord,
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF151515),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                30, 30, 30, 30),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20,
                                                                      10,
                                                                      20,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    rowProjectCaseRecord
                                                                        .title!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              Color(0xFFDFDFDF),
                                                                          fontSize:
                                                                              30,
                                                                          letterSpacing:
                                                                              2,
                                                                          fontWeight:
                                                                              FontWeight.w100,
                                                                          lineHeight:
                                                                              1.5,
                                                                        ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            20,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      rowProjectCaseRecord
                                                                          .description!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                Color(0xFFDFDFDF),
                                                                            fontSize:
                                                                                20,
                                                                            letterSpacing:
                                                                                2,
                                                                            fontWeight:
                                                                                FontWeight.w100,
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            40,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      'Generated on ${dateTimeFormat('MMMMEEEEd', rowProjectCaseRecord.creationDate)}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                Color(0xFFDFDFDF),
                                                                            fontSize:
                                                                                20,
                                                                            letterSpacing:
                                                                                2,
                                                                            fontWeight:
                                                                                FontWeight.w100,
                                                                            fontStyle:
                                                                                FontStyle.italic,
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    StreamBuilder<
                                                                        List<
                                                                            BodyDocumentsRecord>>(
                                                                      stream:
                                                                          queryBodyDocumentsRecord(
                                                                        queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord.where('PositionType', isEqualTo: 1.5).where(
                                                                            'project',
                                                                            isEqualTo:
                                                                                rowProjectCaseRecord.reference),
                                                                        singleRecord:
                                                                            true,
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50,
                                                                              height: 50,
                                                                              child: CircularProgressIndicator(
                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<BodyDocumentsRecord>
                                                                            imageBodyDocumentsRecordList =
                                                                            snapshot.data!;
                                                                        // Return an empty Container when the item does not exist.
                                                                        if (snapshot
                                                                            .data!
                                                                            .isEmpty) {
                                                                          return Container();
                                                                        }
                                                                        final imageBodyDocumentsRecord = imageBodyDocumentsRecordList.isNotEmpty
                                                                            ? imageBodyDocumentsRecordList.first
                                                                            : null;
                                                                        return Image
                                                                            .network(
                                                                          imageBodyDocumentsRecord!
                                                                              .image!,
                                                                          width:
                                                                              40,
                                                                          height:
                                                                              40,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        );
                                                                      },
                                                                    ),
                                                                    StreamBuilder<
                                                                        List<
                                                                            BodyDocumentsRecord>>(
                                                                      stream:
                                                                          queryBodyDocumentsRecord(
                                                                        queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord.where('PositionType', isEqualTo: 1.4).where(
                                                                            'project',
                                                                            isEqualTo:
                                                                                rowProjectCaseRecord.reference),
                                                                        singleRecord:
                                                                            true,
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50,
                                                                              height: 50,
                                                                              child: CircularProgressIndicator(
                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<BodyDocumentsRecord>
                                                                            imageBodyDocumentsRecordList =
                                                                            snapshot.data!;
                                                                        // Return an empty Container when the item does not exist.
                                                                        if (snapshot
                                                                            .data!
                                                                            .isEmpty) {
                                                                          return Container();
                                                                        }
                                                                        final imageBodyDocumentsRecord = imageBodyDocumentsRecordList.isNotEmpty
                                                                            ? imageBodyDocumentsRecordList.first
                                                                            : null;
                                                                        return Image
                                                                            .network(
                                                                          imageBodyDocumentsRecord!
                                                                              .image!,
                                                                          width:
                                                                              40,
                                                                          height:
                                                                              40,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        );
                                                                      },
                                                                    ),
                                                                    StreamBuilder<
                                                                        List<
                                                                            BodyDocumentsRecord>>(
                                                                      stream:
                                                                          queryBodyDocumentsRecord(
                                                                        queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord.where('PositionType', isEqualTo: 1.3).where(
                                                                            'project',
                                                                            isEqualTo:
                                                                                rowProjectCaseRecord.reference),
                                                                        singleRecord:
                                                                            true,
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50,
                                                                              height: 50,
                                                                              child: CircularProgressIndicator(
                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<BodyDocumentsRecord>
                                                                            imageBodyDocumentsRecordList =
                                                                            snapshot.data!;
                                                                        // Return an empty Container when the item does not exist.
                                                                        if (snapshot
                                                                            .data!
                                                                            .isEmpty) {
                                                                          return Container();
                                                                        }
                                                                        final imageBodyDocumentsRecord = imageBodyDocumentsRecordList.isNotEmpty
                                                                            ? imageBodyDocumentsRecordList.first
                                                                            : null;
                                                                        return Image
                                                                            .network(
                                                                          imageBodyDocumentsRecord!
                                                                              .image!,
                                                                          width:
                                                                              40,
                                                                          height:
                                                                              40,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        );
                                                                      },
                                                                    ),
                                                                    StreamBuilder<
                                                                        List<
                                                                            BodyDocumentsRecord>>(
                                                                      stream:
                                                                          queryBodyDocumentsRecord(
                                                                        queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord.where('PositionType', isEqualTo: 1.2).where(
                                                                            'project',
                                                                            isEqualTo:
                                                                                rowProjectCaseRecord.reference),
                                                                        singleRecord:
                                                                            true,
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50,
                                                                              height: 50,
                                                                              child: CircularProgressIndicator(
                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<BodyDocumentsRecord>
                                                                            imageBodyDocumentsRecordList =
                                                                            snapshot.data!;
                                                                        // Return an empty Container when the item does not exist.
                                                                        if (snapshot
                                                                            .data!
                                                                            .isEmpty) {
                                                                          return Container();
                                                                        }
                                                                        final imageBodyDocumentsRecord = imageBodyDocumentsRecordList.isNotEmpty
                                                                            ? imageBodyDocumentsRecordList.first
                                                                            : null;
                                                                        return Image
                                                                            .network(
                                                                          imageBodyDocumentsRecord!
                                                                              .image!,
                                                                          width:
                                                                              40,
                                                                          height:
                                                                              40,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        );
                                                                      },
                                                                    ),
                                                                    StreamBuilder<
                                                                        List<
                                                                            BodyDocumentsRecord>>(
                                                                      stream:
                                                                          queryBodyDocumentsRecord(
                                                                        queryBuilder: (bodyDocumentsRecord) => bodyDocumentsRecord.where('PositionType', isEqualTo: 1.1).where(
                                                                            'project',
                                                                            isEqualTo:
                                                                                rowProjectCaseRecord.reference),
                                                                        singleRecord:
                                                                            true,
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50,
                                                                              height: 50,
                                                                              child: CircularProgressIndicator(
                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<BodyDocumentsRecord>
                                                                            imageBodyDocumentsRecordList =
                                                                            snapshot.data!;
                                                                        // Return an empty Container when the item does not exist.
                                                                        if (snapshot
                                                                            .data!
                                                                            .isEmpty) {
                                                                          return Container();
                                                                        }
                                                                        final imageBodyDocumentsRecord = imageBodyDocumentsRecordList.isNotEmpty
                                                                            ? imageBodyDocumentsRecordList.first
                                                                            : null;
                                                                        return Image
                                                                            .network(
                                                                          imageBodyDocumentsRecord!
                                                                              .image!,
                                                                          width:
                                                                              40,
                                                                          height:
                                                                              40,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        );
                                                                      },
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
                                              ),
                                            );
                                          }),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                          child: Text(
                            'Team Collaborators',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFF7E7E7E),
                                      fontSize: 30,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w200,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: AuthUserStreamWidget(
                            child: Builder(
                              builder: (context) {
                                final collaborators = (currentUserDocument
                                            ?.collaborators
                                            ?.toList() ??
                                        [])
                                    .toList();
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children:
                                        List.generate(collaborators.length,
                                            (collaboratorsIndex) {
                                      final collaboratorsItem =
                                          collaborators[collaboratorsIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 20, 0),
                                        child: StreamBuilder<UsersRecord>(
                                          stream: UsersRecord.getDocument(
                                              collaboratorsItem),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
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
                                            final containerUsersRecord =
                                                snapshot.data!;
                                            return Container(
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF181818),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(20, 20, 20, 20),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 50,
                                                      height: 50,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        'https://picsum.photos/seed/641/600',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 0, 0, 0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            containerUsersRecord
                                                                .displayName!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: Color(
                                                                      0xFFCBCBCB),
                                                                  fontSize: 22,
                                                                  letterSpacing:
                                                                      2,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w200,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        8,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              'Scientist',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: Color(
                                                                        0xFFA3A3A3),
                                                                    fontSize:
                                                                        16,
                                                                    letterSpacing:
                                                                        2,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w200,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
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
      ),
    );
  }
}
