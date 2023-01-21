// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotations_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnnotationsRecord> _$annotationsRecordSerializer =
    new _$AnnotationsRecordSerializer();

class _$AnnotationsRecordSerializer
    implements StructuredSerializer<AnnotationsRecord> {
  @override
  final Iterable<Type> types = const [AnnotationsRecord, _$AnnotationsRecord];
  @override
  final String wireName = 'AnnotationsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AnnotationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.points;
    if (value != null) {
      result
        ..add('Points')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.distance;
    if (value != null) {
      result
        ..add('Distance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.bodyDocument;
    if (value != null) {
      result
        ..add('BodyDocument')
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
  AnnotationsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnnotationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Points':
          result.points.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'Distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'BodyDocument':
          result.bodyDocument = serializers.deserialize(value,
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

class _$AnnotationsRecord extends AnnotationsRecord {
  @override
  final BuiltList<double>? points;
  @override
  final double? distance;
  @override
  final DocumentReference<Object?>? bodyDocument;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AnnotationsRecord(
          [void Function(AnnotationsRecordBuilder)? updates]) =>
      (new AnnotationsRecordBuilder()..update(updates))._build();

  _$AnnotationsRecord._(
      {this.points, this.distance, this.bodyDocument, this.ffRef})
      : super._();

  @override
  AnnotationsRecord rebuild(void Function(AnnotationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnotationsRecordBuilder toBuilder() =>
      new AnnotationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnotationsRecord &&
        points == other.points &&
        distance == other.distance &&
        bodyDocument == other.bodyDocument &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, points.hashCode), distance.hashCode),
            bodyDocument.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnotationsRecord')
          ..add('points', points)
          ..add('distance', distance)
          ..add('bodyDocument', bodyDocument)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AnnotationsRecordBuilder
    implements Builder<AnnotationsRecord, AnnotationsRecordBuilder> {
  _$AnnotationsRecord? _$v;

  ListBuilder<double>? _points;
  ListBuilder<double> get points =>
      _$this._points ??= new ListBuilder<double>();
  set points(ListBuilder<double>? points) => _$this._points = points;

  double? _distance;
  double? get distance => _$this._distance;
  set distance(double? distance) => _$this._distance = distance;

  DocumentReference<Object?>? _bodyDocument;
  DocumentReference<Object?>? get bodyDocument => _$this._bodyDocument;
  set bodyDocument(DocumentReference<Object?>? bodyDocument) =>
      _$this._bodyDocument = bodyDocument;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AnnotationsRecordBuilder() {
    AnnotationsRecord._initializeBuilder(this);
  }

  AnnotationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _points = $v.points?.toBuilder();
      _distance = $v.distance;
      _bodyDocument = $v.bodyDocument;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnotationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnnotationsRecord;
  }

  @override
  void update(void Function(AnnotationsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnotationsRecord build() => _build();

  _$AnnotationsRecord _build() {
    _$AnnotationsRecord _$result;
    try {
      _$result = _$v ??
          new _$AnnotationsRecord._(
              points: _points?.build(),
              distance: distance,
              bodyDocument: bodyDocument,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'points';
        _points?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnnotationsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
