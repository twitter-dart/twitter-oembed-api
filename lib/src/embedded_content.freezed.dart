// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'embedded_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmbeddedContent _$EmbeddedContentFromJson(Map<String, dynamic> json) {
  return _EmbeddedContent.fromJson(json);
}

/// @nodoc
mixin _$EmbeddedContent {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmbeddedContentCopyWith<EmbeddedContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbeddedContentCopyWith<$Res> {
  factory $EmbeddedContentCopyWith(
          EmbeddedContent value, $Res Function(EmbeddedContent) then) =
      _$EmbeddedContentCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$EmbeddedContentCopyWithImpl<$Res>
    implements $EmbeddedContentCopyWith<$Res> {
  _$EmbeddedContentCopyWithImpl(this._value, this._then);

  final EmbeddedContent _value;
  // ignore: unused_field
  final $Res Function(EmbeddedContent) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EmbeddedContentCopyWith<$Res>
    implements $EmbeddedContentCopyWith<$Res> {
  factory _$$_EmbeddedContentCopyWith(
          _$_EmbeddedContent value, $Res Function(_$_EmbeddedContent) then) =
      __$$_EmbeddedContentCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$$_EmbeddedContentCopyWithImpl<$Res>
    extends _$EmbeddedContentCopyWithImpl<$Res>
    implements _$$_EmbeddedContentCopyWith<$Res> {
  __$$_EmbeddedContentCopyWithImpl(
      _$_EmbeddedContent _value, $Res Function(_$_EmbeddedContent) _then)
      : super(_value, (v) => _then(v as _$_EmbeddedContent));

  @override
  _$_EmbeddedContent get _value => super._value as _$_EmbeddedContent;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_EmbeddedContent(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmbeddedContent implements _EmbeddedContent {
  const _$_EmbeddedContent({required this.url});

  factory _$_EmbeddedContent.fromJson(Map<String, dynamic> json) =>
      _$$_EmbeddedContentFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'EmbeddedContent(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmbeddedContent &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_EmbeddedContentCopyWith<_$_EmbeddedContent> get copyWith =>
      __$$_EmbeddedContentCopyWithImpl<_$_EmbeddedContent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmbeddedContentToJson(
      this,
    );
  }
}

abstract class _EmbeddedContent implements EmbeddedContent {
  const factory _EmbeddedContent({required final String url}) =
      _$_EmbeddedContent;

  factory _EmbeddedContent.fromJson(Map<String, dynamic> json) =
      _$_EmbeddedContent.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_EmbeddedContentCopyWith<_$_EmbeddedContent> get copyWith =>
      throw _privateConstructorUsedError;
}
