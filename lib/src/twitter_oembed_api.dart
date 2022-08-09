// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'dart:convert';

import 'base_service.dart';
import 'content_align.dart';
import 'content_language.dart';
import 'content_theme.dart';
import 'content_widget_type.dart';
import 'embedded_content.dart';

abstract class TwitterOembedApi {
  factory TwitterOembedApi() => _TwitterOembedApi();

  /// Converts the specified tweet to Embedded Content format.
  ///
  /// ## Parameters
  ///
  /// - [url]: The URL of the Tweet to be embedded
  ///
  /// - [maxWidth]: The maximum width of a rendered Tweet in whole pixels.
  ///               A supplied value under or over the allowed range will be
  ///               returned as the minimum or maximum supported width
  ///               respectively; the reset width value will be reflected in
  ///               the returned [width] property. Note that Twitter does not
  ///               support the oEmbed max height parameter. Tweets are
  ///               fundamentally text, and are therefore of unpredictable
  ///               height that cannot be scaled like an image or video.
  ///               Relatedly, the oEmbed response will not provide a value for
  ///               height. Implementations that need consistent heights for
  ///               Tweets should refer to the [hideThread] and [hideMedia]
  ///               parameters below.
  ///
  /// - [hideMedia]: When set to true, links in a Tweet are not expanded to
  ///                photo, video, or link previews.
  ///
  /// - [hideThread]: When set to true, a collapsed version of the previous
  ///                 Tweet in a conversation thread will not be displayed when
  ///                 the requested Tweet is in reply to another Tweet.
  ///
  /// - [omitScript]: When set to true, the `<script>` responsible for loading
  ///                 `widgets.js` will not be returned. Your webpages should
  ///                 include their own reference to `widgets.js` for use across
  ///                 all Twitter widgets including [Embedded Tweets](https://developer.twitter.com/en/docs/twitter-for-websites/embedded-tweets/overview).
  ///
  /// - [align]: Specifies whether the embedded Tweet should be floated left,
  ///            right, or center in the page relative to the parent element.
  ///
  /// - [relatedUsernames]: A list of Twitter usernames related to your
  ///                       content. This value will be forwarded to Tweet
  ///                       action intents if a viewer chooses to reply, like,
  ///                       or retweet the embedded Tweet.
  ///
  /// - [lang]: Request returned HTML and a rendered Tweet in the specified
  ///           Twitter language supported by embedded Tweets.
  ///
  /// - [theme]: When set to dark, the Tweet is displayed with light text over
  ///            a dark background.
  ///
  /// - [linkColor]: Adjust the color of Tweet text links with a hexadecimal
  ///                color value.
  ///
  /// - [widgetType]: Set to [ContentWidgetType.video] to return a Twitter
  ///                 Video embed for the given Tweet.
  ///
  /// - [dnt]: When set to `true`, the Tweet and its embedded page on your site
  ///          are not used for purposes that include [personalized suggestions](https://help.twitter.com/ja/using-twitter/tailored-suggestions)
  ///          and [personalized ads](https://help.twitter.com/ja/safety-and-security/privacy-controls-for-tailored-ads).
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-for-websites/oembed-api#item1
  Future<EmbeddedContent> publishEmbeddedTweet({
    required String url,
    int? maxWidth,
    bool? hideMedia,
    bool? hideThread,
    bool? omitScript,
    ContentAlign? align,
    List<String>? relatedUsernames,
    ContentLanguage? lang,
    ContentTheme? theme,
    String? linkColor,
    ContentWidgetType? widgetType,
    bool? dnt,
  });

  Future<EmbeddedContent> publishEmbeddedTimeline();
}

class _TwitterOembedApi extends BaseService implements TwitterOembedApi {
  @override
  Future<EmbeddedContent> publishEmbeddedTweet({
    required String url,
    int? maxWidth,
    bool? hideMedia,
    bool? hideThread,
    bool? omitScript,
    ContentAlign? align,
    List<String>? relatedUsernames,
    ContentLanguage? lang,
    ContentTheme? theme,
    String? linkColor,
    ContentWidgetType? widgetType,
    bool? dnt,
  }) async {
    final response = await super.get();

    return EmbeddedContent.fromJson(
      jsonDecode(response.body),
    );
  }

  @override
  Future<EmbeddedContent> publishEmbeddedTimeline() async {
    final response = await super.get();

    return EmbeddedContent.fromJson(
      jsonDecode(response.body),
    );
  }
}
