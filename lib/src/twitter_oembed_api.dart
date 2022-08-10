// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'dart:convert';

import 'base_service.dart';
import 'content_align.dart';
import 'content_language.dart';
import 'content_theme.dart';
import 'content_widget_type.dart';
import 'embedded_timeline.dart';
import 'embedded_tweet.dart';
import 'twitter_oembed_exception.dart';

abstract class TwitterOEmbedApi {
  factory TwitterOEmbedApi() => _TwitterOEmbedApi();

  /// Converts the specified tweet to Embedded Content format.
  ///
  /// ## Parameters
  ///
  /// - [tweetId]: The Tweet ID to be embedded.
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
  /// - [relatedScreenNames]: A list of Twitter screen names related to your
  ///                         content. This value will be forwarded to Tweet
  ///                         action intents if a viewer chooses to reply, like,
  ///                         or retweet the embedded Tweet.
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
  Future<EmbeddedTweet> publishEmbeddedTweet({
    required String tweetId,
    int? maxWidth,
    bool? hideMedia,
    bool? hideThread,
    bool? omitScript,
    ContentAlign? align,
    List<String>? relatedScreenNames,
    ContentLanguage? lang,
    ContentTheme? theme,
    String? linkColor,
    ContentWidgetType? widgetType,
    bool? dnt,
  });

  /// Converts the specified timeline to Embedded Content format.
  ///
  /// If only [screenName] is specified as an argument, the embedded timeline
  /// is the profile of the user associated with the specified [screenName].　If
  /// [screenName] and [listName] are passed, then the list of specified users
  /// will be the embedded timeline.
  ///
  /// ## Parameters
  ///
  /// - [screenName]: The screen name of the user to be embedded.
  ///
  /// - [listName]: The name of the Twitter list to be embedded.
  ///
  /// - [limit]: Display up to N items where N is a value between 1 and 20
  ///            inclusive.
  ///
  /// - [maxWidth]: Set the maximum width of the widget. Must be between 180
  ///               and 1200 inclusive
  ///
  /// - [maxHeight]: Set the maximum height of the widget. Must be greater
  ///                than 200.
  ///
  /// - [omitScript]: Do not include a script element in the response.
  ///
  /// - [lang]: A supported Twitter language code.
  ///
  /// - [relatedScreenNames]: Suggest additional Twitter screen names related
  ///                         to the widget. Twitter may suggest these accounts
  ///                         to follow after the user likes a displayed Tweet.
  ///                         You may provide a brief description of how the
  ///                         account relates to the Tweet with a URL-encoded
  ///                         comma and text after the screen name.
  ///
  /// - [theme]: When set to `dark`, the timeline is displayed with light text
  ///           over a dark background.
  ///
  /// - [borderColor]: Set the color of widget component borders, including the
  ///                  border between Tweets, with a hexadecimal color value.
  ///
  /// - [dnt]: When set to true, the timeline and its embedded page on your
  ///          site are not used for purposes that include
  ///          personalized suggestions and personalized ads.
  ///
  /// ## Reference
  ///
  /// - https://developer.twitter.com/en/docs/twitter-for-websites/oembed-api#item0
  Future<EmbeddedTimeline> publishEmbeddedTimeline({
    required String screenName,
    String? listName,
    int? limit,
    int? maxWidth,
    int? maxHeight,
    bool? omitScript,
    ContentLanguage? lang,
    List<String>? relatedScreenNames,
    ContentTheme? theme,
    String? borderColor,
    ContentWidgetType? widgetType,
    bool? dnt,
  });
}

class _TwitterOEmbedApi extends BaseService implements TwitterOEmbedApi {
  @override
  Future<EmbeddedTweet> publishEmbeddedTweet({
    required String tweetId,
    int? maxWidth,
    bool? hideMedia,
    bool? hideThread,
    bool? omitScript,
    ContentAlign? align,
    List<String>? relatedScreenNames,
    ContentLanguage? lang,
    ContentTheme? theme,
    String? linkColor,
    ContentWidgetType? widgetType,
    bool? dnt,
  }) async {
    final response = await super.get(
      queryParameters: {
        'url': 'https://twitter.com/Interior/status/$tweetId',
        'maxwidth': maxWidth,
        'hide_media': hideMedia,
        'hide_thread': hideThread,
        'omit_script': omitScript,
        'align': align,
        'related': relatedScreenNames?.join(','),
        'lang': lang?.code,
        'theme': theme?.name,
        'link_color': linkColor,
        'widget_type': widgetType?.name,
        'dnt': dnt,
      },
    );

    if (response.statusCode != 200) {
      throw TwitterOEmbedException(
        'There is no tweet associated with the tweet ID: [$tweetId].',
      );
    }

    return EmbeddedTweet.fromJson(
      jsonDecode(response.body),
    );
  }

  @override
  Future<EmbeddedTimeline> publishEmbeddedTimeline({
    required String screenName,
    String? listName,
    int? limit,
    int? maxWidth,
    int? maxHeight,
    bool? omitScript,
    ContentLanguage? lang,
    List<String>? relatedScreenNames,
    ContentTheme? theme,
    String? borderColor,
    ContentWidgetType? widgetType,
    bool? dnt,
  }) async {
    final response = await super.get(
      queryParameters: {
        'url': _getTimelineUrl(screenName, listName),
        'limit': limit,
        'maxwidth': maxWidth,
        'maxheight': maxHeight,
        'omit_script': omitScript,
        'lang': lang?.code,
        'related': relatedScreenNames?.join(','),
        'theme': theme?.name,
        'border_color': borderColor,
        'widget_type': widgetType?.name,
        'dnt': dnt,
      },
    );

    if (response.statusCode != 200) {
      throw TwitterOEmbedException(
        'There is no timeline associated with the Screen Name: [$screenName].',
      );
    }

    return EmbeddedTimeline.fromJson(
      jsonDecode(response.body),
    );
  }

  String _getTimelineUrl(
    String screenName,
    String? listName,
  ) {
    if (listName != null) {
      return 'https://twitter.com/$screenName/lists/$listName';
    }

    return 'https://twitter.com/$screenName';
  }
}
