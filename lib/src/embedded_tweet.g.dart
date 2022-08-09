// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'embedded_tweet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmbeddedTweet _$$_EmbeddedTweetFromJson(Map json) => $checkedCreate(
      r'_$_EmbeddedTweet',
      json,
      ($checkedConvert) {
        final val = _$_EmbeddedTweet(
          html: $checkedConvert('html', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          authorName: $checkedConvert('author_name', (v) => v as String),
          authorUrl: $checkedConvert('author_url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'authorName': 'author_name',
        'authorUrl': 'author_url'
      },
    );

Map<String, dynamic> _$$_EmbeddedTweetToJson(_$_EmbeddedTweet instance) =>
    <String, dynamic>{
      'html': instance.html,
      'url': instance.url,
      'author_name': instance.authorName,
      'author_url': instance.authorUrl,
    };
