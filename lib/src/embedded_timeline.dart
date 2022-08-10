// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'embedded_timeline.freezed.dart';
part 'embedded_timeline.g.dart';

/// The object representing the embedded timeline.
@freezed
class EmbeddedTimeline with _$EmbeddedTimeline {
  const factory EmbeddedTimeline({
    required String html,
    required String url,
  }) = _EmbeddedTimeline;

  factory EmbeddedTimeline.fromJson(Map<String, Object?> json) =>
      _$EmbeddedTimelineFromJson(json);
}
