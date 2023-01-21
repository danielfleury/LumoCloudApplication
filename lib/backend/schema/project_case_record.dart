import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'project_case_record.g.dart';

abstract class ProjectCaseRecord
    implements Built<ProjectCaseRecord, ProjectCaseRecordBuilder> {
  static Serializer<ProjectCaseRecord> get serializer =>
      _$projectCaseRecordSerializer;

  @BuiltValueField(wireName: 'Title')
  String? get title;

  @BuiltValueField(wireName: 'Creator')
  DocumentReference? get creator;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  BuiltList<DocumentReference>? get administrators;

  @BuiltValueField(wireName: 'CreationDate')
  DateTime? get creationDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProjectCaseRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..administrators = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProjectCase');

  static Stream<ProjectCaseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProjectCaseRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProjectCaseRecord._();
  factory ProjectCaseRecord([void Function(ProjectCaseRecordBuilder) updates]) =
      _$ProjectCaseRecord;

  static ProjectCaseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProjectCaseRecordData({
  String? title,
  DocumentReference? creator,
  String? description,
  DateTime? creationDate,
}) {
  final firestoreData = serializers.toFirestore(
    ProjectCaseRecord.serializer,
    ProjectCaseRecord(
      (p) => p
        ..title = title
        ..creator = creator
        ..description = description
        ..administrators = null
        ..creationDate = creationDate,
    ),
  );

  return firestoreData;
}
