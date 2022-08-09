// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'embedded_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmbeddedContent _$$_EmbeddedContentFromJson(Map json) => $checkedCreate(
      r'_$_EmbeddedContent',
      json,
      ($checkedConvert) {
        final val = _$_EmbeddedContent(
          url: $checkedConvert('url', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          html: $checkedConvert('html', (v) => v as String),
          width: $checkedConvert('width', (v) => v as int?),
          height: $checkedConvert('height', (v) => v as int?),
          type: $checkedConvert('type', (v) => v as String),
          cacheAge: $checkedConvert('cache_age', (v) => v as String),
          providerName: $checkedConvert('provider_name', (v) => v as String),
          providerUrl: $checkedConvert('provider_url', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'cacheAge': 'cache_age',
        'providerName': 'provider_name',
        'providerUrl': 'provider_url'
      },
    );

Map<String, dynamic> _$$_EmbeddedContentToJson(_$_EmbeddedContent instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'html': instance.html,
      'width': instance.width,
      'height': instance.height,
      'type': instance.type,
      'cache_age': instance.cacheAge,
      'provider_name': instance.providerName,
      'provider_url': instance.providerUrl,
      'version': instance.version,
    };
