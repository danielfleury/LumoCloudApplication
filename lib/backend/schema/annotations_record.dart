import 'dart:async';

import 'package:flutter/animation.dart';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'annotations_record.g.dart';

abstract class AnnotationsRecord
    implements Built<AnnotationsRecord, AnnotationsRecordBuilder> {
  static Serializer<AnnotationsRecord> get serializer =>
      _$annotationsRecordSerializer;

  @BuiltValueField(wireName: 'Points')
  BuiltList<double>? get points;

  @BuiltValueField(wireName: 'Distance')
  double? get distance;

  @BuiltValueField(wireName: 'BodyDocument')
  DocumentReference? get bodyDocument;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AnnotationsRecordBuilder builder) => builder
    ..points = ListBuilder()
    ..distance = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Annotations');

  static Stream<AnnotationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AnnotationsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AnnotationsRecord._();
  factory AnnotationsRecord([void Function(AnnotationsRecordBuilder) updates]) =
      _$AnnotationsRecord;

  static AnnotationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAnnotationsRecordData({
  double? distance,
  DocumentReference? bodyDocument,
}) {
  final firestoreData = serializers.toFirestore(
    AnnotationsRecord.serializer,
    AnnotationsRecord(
      (a) => a
        ..points = null
        ..distance = distance
        ..bodyDocument = bodyDocument,
    ),
  );

  return firestoreData;
}
