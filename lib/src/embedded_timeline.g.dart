// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'embedded_timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmbeddedTimeline _$$_EmbeddedTimelineFromJson(Map json) => $checkedCreate(
      r'_$_EmbeddedTimeline',
      json,
      ($checkedConvert) {
        final val = _$_EmbeddedTimeline(
          html: $checkedConvert('html', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_EmbeddedTimelineToJson(_$_EmbeddedTimeline instance) =>
    <String, dynamic>{
      'html': instance.html,
      'url': instance.url,
    };
