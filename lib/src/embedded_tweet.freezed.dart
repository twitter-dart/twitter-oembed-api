// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'embedded_tweet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmbeddedTweet _$EmbeddedTweetFromJson(Map<String, dynamic> json) {
  return _EmbeddedTweet.fromJson(json);
}

/// @nodoc
mixin _$EmbeddedTweet {
  String get html => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  String get authorUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmbeddedTweetCopyWith<EmbeddedTweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbeddedTweetCopyWith<$Res> {
  factory $EmbeddedTweetCopyWith(
          EmbeddedTweet value, $Res Function(EmbeddedTweet) then) =
      _$EmbeddedTweetCopyWithImpl<$Res>;
  $Res call({String html, String url, String authorName, String authorUrl});
}

/// @nodoc
class _$EmbeddedTweetCopyWithImpl<$Res>
    implements $EmbeddedTweetCopyWith<$Res> {
  _$EmbeddedTweetCopyWithImpl(this._value, this._then);

  final EmbeddedTweet _value;
  // ignore: unused_field
  final $Res Function(EmbeddedTweet) _then;

  @override
  $Res call({
    Object? html = freezed,
    Object? url = freezed,
    Object? authorName = freezed,
    Object? authorUrl = freezed,
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
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorUrl: authorUrl == freezed
          ? _value.authorUrl
          : authorUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EmbeddedTweetCopyWith<$Res>
    implements $EmbeddedTweetCopyWith<$Res> {
  factory _$$_EmbeddedTweetCopyWith(
          _$_EmbeddedTweet value, $Res Function(_$_EmbeddedTweet) then) =
      __$$_EmbeddedTweetCopyWithImpl<$Res>;
  @override
  $Res call({String html, String url, String authorName, String authorUrl});
}

/// @nodoc
class __$$_EmbeddedTweetCopyWithImpl<$Res>
    extends _$EmbeddedTweetCopyWithImpl<$Res>
    implements _$$_EmbeddedTweetCopyWith<$Res> {
  __$$_EmbeddedTweetCopyWithImpl(
      _$_EmbeddedTweet _value, $Res Function(_$_EmbeddedTweet) _then)
      : super(_value, (v) => _then(v as _$_EmbeddedTweet));

  @override
  _$_EmbeddedTweet get _value => super._value as _$_EmbeddedTweet;

  @override
  $Res call({
    Object? html = freezed,
    Object? url = freezed,
    Object? authorName = freezed,
    Object? authorUrl = freezed,
  }) {
    return _then(_$_EmbeddedTweet(
      html: html == freezed
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorUrl: authorUrl == freezed
          ? _value.authorUrl
          : authorUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmbeddedTweet implements _EmbeddedTweet {
  const _$_EmbeddedTweet(
      {required this.html,
      required this.url,
      required this.authorName,
      required this.authorUrl});

  factory _$_EmbeddedTweet.fromJson(Map<String, dynamic> json) =>
      _$$_EmbeddedTweetFromJson(json);

  @override
  final String html;
  @override
  final String url;
  @override
  final String authorName;
  @override
  final String authorUrl;

  @override
  String toString() {
    return 'EmbeddedTweet(html: $html, url: $url, authorName: $authorName, authorUrl: $authorUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmbeddedTweet &&
            const DeepCollectionEquality().equals(other.html, html) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.authorName, authorName) &&
            const DeepCollectionEquality().equals(other.authorUrl, authorUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(html),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(authorName),
      const DeepCollectionEquality().hash(authorUrl));

  @JsonKey(ignore: true)
  @override
  _$$_EmbeddedTweetCopyWith<_$_EmbeddedTweet> get copyWith =>
      __$$_EmbeddedTweetCopyWithImpl<_$_EmbeddedTweet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmbeddedTweetToJson(
      this,
    );
  }
}

abstract class _EmbeddedTweet implements EmbeddedTweet {
  const factory _EmbeddedTweet(
      {required final String html,
      required final String url,
      required final String authorName,
      required final String authorUrl}) = _$_EmbeddedTweet;

  factory _EmbeddedTweet.fromJson(Map<String, dynamic> json) =
      _$_EmbeddedTweet.fromJson;

  @override
  String get html;
  @override
  String get url;
  @override
  String get authorName;
  @override
  String get authorUrl;
  @override
  @JsonKey(ignore: true)
  _$$_EmbeddedTweetCopyWith<_$_EmbeddedTweet> get copyWith =>
      throw _privateConstructorUsedError;
}
