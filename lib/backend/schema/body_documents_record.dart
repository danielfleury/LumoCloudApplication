import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'body_documents_record.g.dart';

abstract class BodyDocumentsRecord
    implements Built<BodyDocumentsRecord, BodyDocumentsRecordBuilder> {
  static Serializer<BodyDocumentsRecord> get serializer =>
      _$bodyDocumentsRecordSerializer;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: 'Annotations')
  BuiltList<DocumentReference>? get annotations;

  @BuiltValueField(wireName: 'UploadDate')
  DateTime? get uploadDate;

  @BuiltValueField(wireName: 'PositionType')
  double? get positionType;

  DocumentReference? get project;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BodyDocumentsRecordBuilder builder) => builder
    ..image = ''
    ..annotations = ListBuilder()
    ..positionType = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BodyDocuments');

  static Stream<BodyDocumentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BodyDocumentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BodyDocumentsRecord._();
  factory BodyDocumentsRecord(
          [void Function(BodyDocumentsRecordBuilder) updates]) =
      _$BodyDocumentsRecord;

  static BodyDocumentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBodyDocumentsRecordData({
  String? image,
  DateTime? uploadDate,
  double? positionType,
  DocumentReference? project,
}) {
  final firestoreData = serializers.toFirestore(
    BodyDocumentsRecord.serializer,
    BodyDocumentsRecord(
      (b) => b
        ..image = image
        ..annotations = null
        ..uploadDate = uploadDate
        ..positionType = positionType
        ..project = project,
    ),
  );

  return firestoreData;
}
