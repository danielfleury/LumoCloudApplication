import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class NewCaseBottomSheetWidget extends StatefulWidget {
  const NewCaseBottomSheetWidget({
    Key? key,
    this.caseparameter,
  }) : super(key: key);

  final ProjectCaseRecord? caseparameter;

  @override
  _NewCaseBottomSheetWidgetState createState() =>
      _NewCaseBottomSheetWidgetState();
}

class _NewCaseBottomSheetWidgetState extends State<NewCaseBottomSheetWidget> {
  bool isMediaUploading1 = false;
  String uploadedFileUrl1 = '';

  bool isMediaUploading2 = false;
  String uploadedFileUrl2 = '';

  bool isMediaUploading3 = false;
  String uploadedFileUrl3 = '';

  bool isMediaUploading4 = false;
  String uploadedFileUrl4 = '';

  bool isMediaUploading5 = false;
  String uploadedFileUrl5 = '';

  PageController? pageViewController;
  TextEditingController? textController1;
  TextEditingController? textController2;
  bool isMediaUploading10 = false;
  String uploadedFileUrl10 = '';

  bool isMediaUploading6 = false;
  String uploadedFileUrl6 = '';

  bool isMediaUploading7 = false;
  String uploadedFileUrl7 = '';

  bool isMediaUploading8 = false;
  String uploadedFileUrl8 = '';

  bool isMediaUploading9 = false;
  String uploadedFileUrl9 = '';

  bool isMediaUploading11 = false;
  String uploadedFileUrl11 = '';

  bool isMediaUploading12 = false;
  String uploadedFileUrl12 = '';

  bool isMediaUploading13 = false;
  String uploadedFileUrl13 = '';

  bool isMediaUploading14 = false;
  String uploadedFileUrl14 = '';

  bool isMediaUploading15 = false;
  String uploadedFileUrl15 = '';

  bool isMediaUploading16 = false;
  String uploadedFileUrl16 = '';

  bool isMediaUploading17 = false;
  String uploadedFileUrl17 = '';

  bool isMediaUploading18 = false;
  String uploadedFileUrl18 = '';

  bool isMediaUploading19 = false;
  String uploadedFileUrl19 = '';

  bool isMediaUploading20 = false;
  String uploadedFileUrl20 = '';

  bool isMediaUploading21 = false;
  String uploadedFileUrl21 = '';

  bool isMediaUploading22 = false;
  String uploadedFileUrl22 = '';

  bool isMediaUploading23 = false;
  String uploadedFileUrl23 = '';

  bool isMediaUploading24 = false;
  String uploadedFileUrl24 = '';

  bool isMediaUploading25 = false;
  String uploadedFileUrl25 = '';

  final formKey1 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Color(0xB2000000),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(40, 40, 40, 40),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 500,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: pageViewController ??=
                        PageController(initialPage: 0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Project Definition | Step 1',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFB9B9B9),
                                        fontSize: 60,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w200,
                                      ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 0, 0, 0),
                                    child: LinearPercentIndicator(
                                      percent: 0.16,
                                      width: MediaQuery.of(context).size.width,
                                      lineHeight: 8,
                                      animation: true,
                                      progressColor: Color(0xFFB0B0B0),
                                      backgroundColor: Color(0xFF474747),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Text(
                                'Brief information',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFF818181),
                                      fontSize: 30,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w200,
                                    ),
                              ),
                            ),
                            Form(
                              key: formKey6,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 80, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      TextFormField(
                                        controller: textController1,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'textController1',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Case Title',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: Color(0xFF888888),
                                                    fontSize: 40,
                                                    letterSpacing: 2,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF9B9B9B),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF9B9B9B),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          suffixIcon: textController1!
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    textController1?.clear();
                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: Color(0xFF757575),
                                                    size: 22,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Inter',
                                              color: Color(0xFFCBCBCB),
                                              fontSize: 40,
                                              letterSpacing: 2,
                                              fontWeight: FontWeight.w200,
                                            ),
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return 'Field is required';
                                          }

                                          return null;
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 40, 0, 0),
                                        child: TextFormField(
                                          controller: textController2,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'textController2',
                                            Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Description',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      color: Color(0xFF888888),
                                                      fontSize: 40,
                                                      letterSpacing: 2,
                                                      fontWeight:
                                                          FontWeight.w200,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF9B9B9B),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF9B9B9B),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            suffixIcon: textController2!
                                                    .text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      textController2?.clear();
                                                      setState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      color: Color(0xFF757575),
                                                      size: 22,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Inter',
                                                color: Color(0xFFCBCBCB),
                                                fontSize: 40,
                                                letterSpacing: 2,
                                                fontWeight: FontWeight.w200,
                                              ),
                                          maxLines: 5,
                                          validator: (val) {
                                            if (val == null || val.isEmpty) {
                                              return 'Field is required';
                                            }

                                            return null;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (formKey6.currentState == null ||
                                      !formKey6.currentState!.validate()) {
                                    return;
                                  }

                                  final projectCaseUpdateData =
                                      createProjectCaseRecordData(
                                    title: textController1!.text,
                                    creator: currentUserReference,
                                    description: textController2!.text,
                                    creationDate: getCurrentTimestamp,
                                  );
                                  await widget.caseparameter!.reference
                                      .update(projectCaseUpdateData);
                                  await pageViewController?.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                text: 'Next',
                                options: FFButtonOptions(
                                  width: 240,
                                  height: 80,
                                  color: Color(0xFF1A1A1A),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFC1C1C1),
                                        fontSize: 26,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '36° Image Upload | Step 2',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFB9B9B9),
                                        fontSize: 60,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w200,
                                      ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 0, 0, 0),
                                    child: LinearPercentIndicator(
                                      percent: 0.32,
                                      width: MediaQuery.of(context).size.width,
                                      lineHeight: 8,
                                      animation: true,
                                      progressColor: Color(0xFFB0B0B0),
                                      backgroundColor: Color(0xFF474747),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Text(
                                'Manual data entry for five angle captures',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFF818181),
                                      fontSize: 30,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w200,
                                    ),
                              ),
                            ),
                            Form(
                              key: formKey4,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading1 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading1 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl1 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl1,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 1.1,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Image uploaded'),
                                            content: Text(
                                                'Image uploaded successfully'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_001_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading2 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading2 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl2 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl2,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 1.2,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_002_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading3 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading3 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl3 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl3,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 1.3,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_003_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading4 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading4 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl4 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl4,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 1.4,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_004_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading5 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading5 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl5 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl5,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 1.5,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_005_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await pageViewController?.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                text: 'Next',
                                options: FFButtonOptions(
                                  width: 240,
                                  height: 80,
                                  color: Color(0xFF1A1A1A),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFC1C1C1),
                                        fontSize: 26,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '72° Image Upload | Step 3',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFB9B9B9),
                                        fontSize: 60,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w200,
                                      ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 0, 0, 0),
                                    child: LinearPercentIndicator(
                                      percent: 0.48,
                                      width: MediaQuery.of(context).size.width,
                                      lineHeight: 8,
                                      animation: true,
                                      progressColor: Color(0xFFB0B0B0),
                                      backgroundColor: Color(0xFF474747),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Text(
                                'Manual data entry for five angle captures',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFF818181),
                                      fontSize: 30,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w200,
                                    ),
                              ),
                            ),
                            Form(
                              key: formKey1,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading6 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading6 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl6 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl6,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 2.1,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_001_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading7 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading7 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl7 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl7,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 2.2,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_002_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading8 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading8 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl8 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl8,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 2.3,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_003_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading9 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading9 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl9 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl9,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 2.4,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_004_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading10 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading10 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl10 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl10,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 2.5,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_005_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await pageViewController?.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                text: 'Next',
                                options: FFButtonOptions(
                                  width: 240,
                                  height: 80,
                                  color: Color(0xFF1A1A1A),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFC1C1C1),
                                        fontSize: 26,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '108° Image Upload | Step 4',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFB9B9B9),
                                        fontSize: 60,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w200,
                                      ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 0, 0, 0),
                                    child: LinearPercentIndicator(
                                      percent: 0.64,
                                      width: MediaQuery.of(context).size.width,
                                      lineHeight: 8,
                                      animation: true,
                                      progressColor: Color(0xFFB0B0B0),
                                      backgroundColor: Color(0xFF474747),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Text(
                                'Manual data entry for five angle captures',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFF818181),
                                      fontSize: 30,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w200,
                                    ),
                              ),
                            ),
                            Form(
                              key: formKey5,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading11 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading11 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl11 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl11,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 3.1,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_001_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading12 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading12 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl12 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl12,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 3.2,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_002_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading13 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading13 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl13 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl13,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 3.3,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_003_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading14 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading14 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl14 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl14,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 3.4,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_004_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading15 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading15 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl15 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl15,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 3.5,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_005_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await pageViewController?.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                text: 'Next',
                                options: FFButtonOptions(
                                  width: 240,
                                  height: 80,
                                  color: Color(0xFF1A1A1A),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFC1C1C1),
                                        fontSize: 26,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '144° Image Upload | Step 5',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFB9B9B9),
                                        fontSize: 60,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w200,
                                      ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 0, 0, 0),
                                    child: LinearPercentIndicator(
                                      percent: 0.8,
                                      width: MediaQuery.of(context).size.width,
                                      lineHeight: 8,
                                      animation: true,
                                      progressColor: Color(0xFFB0B0B0),
                                      backgroundColor: Color(0xFF474747),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Text(
                                'Manual data entry for five angle captures',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFF818181),
                                      fontSize: 30,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w200,
                                    ),
                              ),
                            ),
                            Form(
                              key: formKey2,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading16 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading16 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl16 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl16,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 5.1,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_001_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading17 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading17 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl17 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl17,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 5.2,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_002_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading18 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading18 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl18 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl18,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 5.3,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_003_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading19 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading19 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl19 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl19,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 5.4,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_004_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading20 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading20 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl20 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl20,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 5.5,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_005_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await pageViewController?.nextPage(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                text: 'Next',
                                options: FFButtonOptions(
                                  width: 240,
                                  height: 80,
                                  color: Color(0xFF1A1A1A),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFC1C1C1),
                                        fontSize: 26,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '180° Image Upload | Step 6',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFB9B9B9),
                                        fontSize: 60,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w200,
                                      ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 0, 0, 0),
                                    child: LinearPercentIndicator(
                                      percent: 1,
                                      width: MediaQuery.of(context).size.width,
                                      lineHeight: 8,
                                      animation: true,
                                      progressColor: Color(0xFFB0B0B0),
                                      backgroundColor: Color(0xFF474747),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Text(
                                'Manual data entry for five angle captures',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFF818181),
                                      fontSize: 30,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w200,
                                    ),
                              ),
                            ),
                            Form(
                              key: formKey3,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.35,
                                decoration: BoxDecoration(),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading21 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading21 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl21 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl21,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 4.1,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_001_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading22 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading22 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl22 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl22,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 4.2,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_002_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading23 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading23 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl23 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl23,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 4.3,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_003_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading24 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading24 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl24 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl24,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 4.4,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_004_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final selectedMedia = await selectMedia(
                                        mediaSource: MediaSource.photoGallery,
                                        multiImage: false,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(
                                            () => isMediaUploading25 = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading25 = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl25 =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      final bodyDocumentsCreateData =
                                          createBodyDocumentsRecordData(
                                        image: uploadedFileUrl25,
                                        uploadDate: getCurrentTimestamp,
                                        positionType: 4.5,
                                        project:
                                            widget.caseparameter!.reference,
                                      );
                                      await BodyDocumentsRecord.collection
                                          .doc()
                                          .set(bodyDocumentsCreateData);
                                    },
                                    child: Badge(
                                      badgeContent: Text(
                                        '+',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontSize: 30,
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: BadgeShape.circle,
                                      badgeColor: Color(0xFFF2F2F2),
                                      elevation: 4,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      position: BadgePosition.topEnd(),
                                      animationType: BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: Image.asset(
                                        'assets/images/image_part_005_1.png',
                                        width: 200,
                                        height: 400,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed(
                                    'HomePage',
                                    queryParams: {
                                      'projectdocument': serializeParam(
                                        widget.caseparameter,
                                        ParamType.Document,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'projectdocument': widget.caseparameter,
                                    },
                                  );
                                },
                                text: 'Finish',
                                options: FFButtonOptions(
                                  width: 240,
                                  height: 80,
                                  color: Color(0xFF1A1A1A),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFFC1C1C1),
                                        fontSize: 26,
                                        letterSpacing: 2,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(0),
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
            ),
          ],
        ),
      ),
    );
  }
}
