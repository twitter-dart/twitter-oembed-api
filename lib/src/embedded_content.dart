// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'embedded_content.freezed.dart';
part 'embedded_content.g.dart';

/// The object representing the response of a request sent to the
/// Twitter oEmbed API.
@freezed
class EmbeddedContent with _$EmbeddedContent {
  const factory EmbeddedContent({
    required String url,
    required String title,
    required String html,
    int? width,
    int? height,
    required String type,
    required String cacheAge,
    required String providerName,
    required String providerUrl,
    required String version,
  }) = _EmbeddedContent;

  factory EmbeddedContent.fromJson(Map<String, Object?> json) =>
      _$EmbeddedContentFromJson(json);
}
