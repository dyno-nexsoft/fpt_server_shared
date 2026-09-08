// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReviewIssue _$ReviewIssueFromJson(Map<String, dynamic> json) {
  return _ReviewIssue.fromJson(json);
}

/// @nodoc
mixin _$ReviewIssue {
  @JsonKey(unknownEnumValue: ReviewSeverity.low)
  ReviewSeverity get severity => throw _privateConstructorUsedError;
  String get file => throw _privateConstructorUsedError;

  /// `0` for a synthetic pipeline notice, which reports a failed batch
  /// rather than a finding and so has no real line to cite.
  int get lineStart => throw _privateConstructorUsedError;
  int? get lineEnd => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Direct link to the exact line(s) in GitLab's blob view — null for a
  /// pipeline notice, which has no file to link to.
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewIssueCopyWith<ReviewIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewIssueCopyWith<$Res> {
  factory $ReviewIssueCopyWith(
    ReviewIssue value,
    $Res Function(ReviewIssue) then,
  ) = _$ReviewIssueCopyWithImpl<$Res, ReviewIssue>;
  @useResult
  $Res call({
    @JsonKey(unknownEnumValue: ReviewSeverity.low) ReviewSeverity severity,
    String file,
    int lineStart,
    int? lineEnd,
    String description,
    String? url,
  });
}

/// @nodoc
class _$ReviewIssueCopyWithImpl<$Res, $Val extends ReviewIssue>
    implements $ReviewIssueCopyWith<$Res> {
  _$ReviewIssueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? severity = null,
    Object? file = null,
    Object? lineStart = null,
    Object? lineEnd = freezed,
    Object? description = null,
    Object? url = freezed,
  }) {
    return _then(
      _value.copyWith(
            severity: null == severity
                ? _value.severity
                : severity // ignore: cast_nullable_to_non_nullable
                      as ReviewSeverity,
            file: null == file
                ? _value.file
                : file // ignore: cast_nullable_to_non_nullable
                      as String,
            lineStart: null == lineStart
                ? _value.lineStart
                : lineStart // ignore: cast_nullable_to_non_nullable
                      as int,
            lineEnd: freezed == lineEnd
                ? _value.lineEnd
                : lineEnd // ignore: cast_nullable_to_non_nullable
                      as int?,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            url: freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewIssueImplCopyWith<$Res>
    implements $ReviewIssueCopyWith<$Res> {
  factory _$$ReviewIssueImplCopyWith(
    _$ReviewIssueImpl value,
    $Res Function(_$ReviewIssueImpl) then,
  ) = __$$ReviewIssueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(unknownEnumValue: ReviewSeverity.low) ReviewSeverity severity,
    String file,
    int lineStart,
    int? lineEnd,
    String description,
    String? url,
  });
}

/// @nodoc
class __$$ReviewIssueImplCopyWithImpl<$Res>
    extends _$ReviewIssueCopyWithImpl<$Res, _$ReviewIssueImpl>
    implements _$$ReviewIssueImplCopyWith<$Res> {
  __$$ReviewIssueImplCopyWithImpl(
    _$ReviewIssueImpl _value,
    $Res Function(_$ReviewIssueImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? severity = null,
    Object? file = null,
    Object? lineStart = null,
    Object? lineEnd = freezed,
    Object? description = null,
    Object? url = freezed,
  }) {
    return _then(
      _$ReviewIssueImpl(
        severity: null == severity
            ? _value.severity
            : severity // ignore: cast_nullable_to_non_nullable
                  as ReviewSeverity,
        file: null == file
            ? _value.file
            : file // ignore: cast_nullable_to_non_nullable
                  as String,
        lineStart: null == lineStart
            ? _value.lineStart
            : lineStart // ignore: cast_nullable_to_non_nullable
                  as int,
        lineEnd: freezed == lineEnd
            ? _value.lineEnd
            : lineEnd // ignore: cast_nullable_to_non_nullable
                  as int?,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        url: freezed == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewIssueImpl extends _ReviewIssue {
  const _$ReviewIssueImpl({
    @JsonKey(unknownEnumValue: ReviewSeverity.low) required this.severity,
    required this.file,
    required this.lineStart,
    this.lineEnd,
    required this.description,
    this.url,
  }) : super._();

  factory _$ReviewIssueImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewIssueImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: ReviewSeverity.low)
  final ReviewSeverity severity;
  @override
  final String file;

  /// `0` for a synthetic pipeline notice, which reports a failed batch
  /// rather than a finding and so has no real line to cite.
  @override
  final int lineStart;
  @override
  final int? lineEnd;
  @override
  final String description;

  /// Direct link to the exact line(s) in GitLab's blob view — null for a
  /// pipeline notice, which has no file to link to.
  @override
  final String? url;

  @override
  String toString() {
    return 'ReviewIssue(severity: $severity, file: $file, lineStart: $lineStart, lineEnd: $lineEnd, description: $description, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewIssueImpl &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.lineStart, lineStart) ||
                other.lineStart == lineStart) &&
            (identical(other.lineEnd, lineEnd) || other.lineEnd == lineEnd) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    severity,
    file,
    lineStart,
    lineEnd,
    description,
    url,
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewIssueImplCopyWith<_$ReviewIssueImpl> get copyWith =>
      __$$ReviewIssueImplCopyWithImpl<_$ReviewIssueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewIssueImplToJson(this);
  }
}

abstract class _ReviewIssue extends ReviewIssue {
  const factory _ReviewIssue({
    @JsonKey(unknownEnumValue: ReviewSeverity.low)
    required final ReviewSeverity severity,
    required final String file,
    required final int lineStart,
    final int? lineEnd,
    required final String description,
    final String? url,
  }) = _$ReviewIssueImpl;
  const _ReviewIssue._() : super._();

  factory _ReviewIssue.fromJson(Map<String, dynamic> json) =
      _$ReviewIssueImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: ReviewSeverity.low)
  ReviewSeverity get severity;
  @override
  String get file;
  @override
  /// `0` for a synthetic pipeline notice, which reports a failed batch
  /// rather than a finding and so has no real line to cite.
  int get lineStart;
  @override
  int? get lineEnd;
  @override
  String get description;
  @override
  /// Direct link to the exact line(s) in GitLab's blob view — null for a
  /// pipeline notice, which has no file to link to.
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$ReviewIssueImplCopyWith<_$ReviewIssueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
