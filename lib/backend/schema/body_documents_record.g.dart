// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_documents_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BodyDocumentsRecord> _$bodyDocumentsRecordSerializer =
    new _$BodyDocumentsRecordSerializer();

class _$BodyDocumentsRecordSerializer
    implements StructuredSerializer<BodyDocumentsRecord> {
  @override
  final Iterable<Type> types = const [
    BodyDocumentsRecord,
    _$BodyDocumentsRecord
  ];
  @override
  final String wireName = 'BodyDocumentsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BodyDocumentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.image;
    if (value != null) {
      result
        ..add('Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.annotations;
    if (value != null) {
      result
        ..add('Annotations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.uploadDate;
    if (value != null) {
      result
        ..add('UploadDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.positionType;
    if (value != null) {
      result
        ..add('PositionType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.project;
    if (value != null) {
      result
        ..add('project')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BodyDocumentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BodyDocumentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Annotations':
          result.annotations.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'UploadDate':
          result.uploadDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'PositionType':
          result.positionType = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'project':
          result.project = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BodyDocumentsRecord extends BodyDocumentsRecord {
  @override
  final String? image;
  @override
  final BuiltList<DocumentReference<Object?>>? annotations;
  @override
  final DateTime? uploadDate;
  @override
  final double? positionType;
  @override
  final DocumentReference<Object?>? project;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BodyDocumentsRecord(
          [void Function(BodyDocumentsRecordBuilder)? updates]) =>
      (new BodyDocumentsRecordBuilder()..update(updates))._build();

  _$BodyDocumentsRecord._(
      {this.image,
      this.annotations,
      this.uploadDate,
      this.positionType,
      this.project,
      this.ffRef})
      : super._();

  @override
  BodyDocumentsRecord rebuild(
          void Function(BodyDocumentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BodyDocumentsRecordBuilder toBuilder() =>
      new BodyDocumentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BodyDocumentsRecord &&
        image == other.image &&
        annotations == other.annotations &&
        uploadDate == other.uploadDate &&
        positionType == other.positionType &&
        project == other.project &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, image.hashCode), annotations.hashCode),
                    uploadDate.hashCode),
                positionType.hashCode),
            project.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BodyDocumentsRecord')
          ..add('image', image)
          ..add('annotations', annotations)
          ..add('uploadDate', uploadDate)
          ..add('positionType', positionType)
          ..add('project', project)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BodyDocumentsRecordBuilder
    implements Builder<BodyDocumentsRecord, BodyDocumentsRecordBuilder> {
  _$BodyDocumentsRecord? _$v;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  ListBuilder<DocumentReference<Object?>>? _annotations;
  ListBuilder<DocumentReference<Object?>> get annotations =>
      _$this._annotations ??= new ListBuilder<DocumentReference<Object?>>();
  set annotations(ListBuilder<DocumentReference<Object?>>? annotations) =>
      _$this._annotations = annotations;

  DateTime? _uploadDate;
  DateTime? get uploadDate => _$this._uploadDate;
  set uploadDate(DateTime? uploadDate) => _$this._uploadDate = uploadDate;

  double? _positionType;
  double? get positionType => _$this._positionType;
  set positionType(double? positionType) => _$this._positionType = positionType;

  DocumentReference<Object?>? _project;
  DocumentReference<Object?>? get project => _$this._project;
  set project(DocumentReference<Object?>? project) => _$this._project = project;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BodyDocumentsRecordBuilder() {
    BodyDocumentsRecord._initializeBuilder(this);
  }

  BodyDocumentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _annotations = $v.annotations?.toBuilder();
      _uploadDate = $v.uploadDate;
      _positionType = $v.positionType;
      _project = $v.project;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BodyDocumentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BodyDocumentsRecord;
  }

  @override
  void update(void Function(BodyDocumentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BodyDocumentsRecord build() => _build();

  _$BodyDocumentsRecord _build() {
    _$BodyDocumentsRecord _$result;
    try {
      _$result = _$v ??
          new _$BodyDocumentsRecord._(
              image: image,
              annotations: _annotations?.build(),
              uploadDate: uploadDate,
              positionType: positionType,
              project: project,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'annotations';
        _annotations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BodyDocumentsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
