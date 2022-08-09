// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'embedded_tweet.freezed.dart';
part 'embedded_tweet.g.dart';

/// The object representing the embedded tweet.
@freezed
class EmbeddedTweet with _$EmbeddedTweet {
  const factory EmbeddedTweet({
    required String html,
    required String url,
    required String authorName,
    required String authorUrl,
  }) = _EmbeddedTweet;

  factory EmbeddedTweet.fromJson(Map<String, Object?> json) =>
      _$EmbeddedTweetFromJson(json);
}
