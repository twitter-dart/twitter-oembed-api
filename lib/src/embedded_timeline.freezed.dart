// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'embedded_timeline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmbeddedTimeline _$EmbeddedTimelineFromJson(Map<String, dynamic> json) {
  return _EmbeddedTimeline.fromJson(json);
}

/// @nodoc
mixin _$EmbeddedTimeline {
  String get html => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmbeddedTimelineCopyWith<EmbeddedTimeline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbeddedTimelineCopyWith<$Res> {
  factory $EmbeddedTimelineCopyWith(
          EmbeddedTimeline value, $Res Function(EmbeddedTimeline) then) =
      _$EmbeddedTimelineCopyWithImpl<$Res>;
  $Res call({String html, String url});
}

/// @nodoc
class _$EmbeddedTimelineCopyWithImpl<$Res>
    implements $EmbeddedTimelineCopyWith<$Res> {
  _$EmbeddedTimelineCopyWithImpl(this._value, this._then);

  final EmbeddedTimeline _value;
  // ignore: unused_field
  final $Res Function(EmbeddedTimeline) _then;

  @override
  $Res call({
    Object? html = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      html: html == freezed
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EmbeddedTimelineCopyWith<$Res>
    implements $EmbeddedTimelineCopyWith<$Res> {
  factory _$$_EmbeddedTimelineCopyWith(
          _$_EmbeddedTimeline value, $Res Function(_$_EmbeddedTimeline) then) =
      __$$_EmbeddedTimelineCopyWithImpl<$Res>;
  @override
  $Res call({String html, String url});
}

/// @nodoc
class __$$_EmbeddedTimelineCopyWithImpl<$Res>
    extends _$EmbeddedTimelineCopyWithImpl<$Res>
    implements _$$_EmbeddedTimelineCopyWith<$Res> {
  __$$_EmbeddedTimelineCopyWithImpl(
      _$_EmbeddedTimeline _value, $Res Function(_$_EmbeddedTimeline) _then)
      : super(_value, (v) => _then(v as _$_EmbeddedTimeline));

  @override
  _$_EmbeddedTimeline get _value => super._value as _$_EmbeddedTimeline;

  @override
  $Res call({
    Object? html = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_EmbeddedTimeline(
      html: html == freezed
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmbeddedTimeline implements _EmbeddedTimeline {
  const _$_EmbeddedTimeline({required this.html, required this.url});

  factory _$_EmbeddedTimeline.fromJson(Map<String, dynamic> json) =>
      _$$_EmbeddedTimelineFromJson(json);

  @override
  final String html;
  @override
  final String url;

  @override
  String toString() {
    return 'EmbeddedTimeline(html: $html, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmbeddedTimeline &&
            const DeepCollectionEquality().equals(other.html, html) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(html),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_EmbeddedTimelineCopyWith<_$_EmbeddedTimeline> get copyWith =>
      __$$_EmbeddedTimelineCopyWithImpl<_$_EmbeddedTimeline>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmbeddedTimelineToJson(
      this,
    );
  }
}

abstract class _EmbeddedTimeline implements EmbeddedTimeline {
  const factory _EmbeddedTimeline(
      {required final String html,
      required final String url}) = _$_EmbeddedTimeline;

  factory _EmbeddedTimeline.fromJson(Map<String, dynamic> json) =
      _$_EmbeddedTimeline.fromJson;

  @override
  String get html;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_EmbeddedTimelineCopyWith<_$_EmbeddedTimeline> get copyWith =>
      throw _privateConstructorUsedError;
}
