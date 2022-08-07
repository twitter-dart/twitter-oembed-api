// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'embedded_content.freezed.dart';
part 'embedded_content.g.dart';

@freezed
class EmbeddedContent with _$EmbeddedContent {
  const factory EmbeddedContent({
    required String url,
  }) = _EmbeddedContent;

  factory EmbeddedContent.fromJson(Map<String, Object?> json) =>
      _$EmbeddedContentFromJson(json);
}
