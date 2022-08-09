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
          url: $checkedConvert('url', (v) => v as String),
          html: $checkedConvert('html', (v) => v as String),
          width: $checkedConvert('width', (v) => v as int?),
          type: $checkedConvert('type', (v) => v as String),
          cacheAge: $checkedConvert('cache_age', (v) => v as String),
          authorName: $checkedConvert('author_name', (v) => v as String),
          authorUrl: $checkedConvert('author_url', (v) => v as String),
          providerName: $checkedConvert('provider_name', (v) => v as String),
          providerUrl: $checkedConvert('provider_url', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'cacheAge': 'cache_age',
        'authorName': 'author_name',
        'authorUrl': 'author_url',
        'providerName': 'provider_name',
        'providerUrl': 'provider_url'
      },
    );

Map<String, dynamic> _$$_EmbeddedTweetToJson(_$_EmbeddedTweet instance) =>
    <String, dynamic>{
      'url': instance.url,
      'html': instance.html,
      'width': instance.width,
      'type': instance.type,
      'cache_age': instance.cacheAge,
      'author_name': instance.authorName,
      'author_url': instance.authorUrl,
      'provider_name': instance.providerName,
      'provider_url': instance.providerUrl,
      'version': instance.version,
    };
