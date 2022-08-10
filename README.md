<p align="center">
  <a href="https://github.com/twitter-dart/twitter-oembed-api">
    <img alt="twitter_oembed_api" width="500px" src="https://user-images.githubusercontent.com/13072231/183552635-bcf99995-ab3d-44c7-adff-828be0d21184.png">
  </a>
</p>

<p align="center">
  <b>The Easiest Way to Use the Twitter oEmbed API in Dart and Flutter App  🐦</b>
</p>

---

[![GitHub Sponsor](https://img.shields.io/static/v1?label=Sponsor&message=%E2%9D%A4&logo=GitHub&color=ff69b4)](https://github.com/sponsors/myConsciousness)
[![GitHub Sponsor](https://img.shields.io/static/v1?label=Maintainer&message=myConsciousness&logo=GitHub&color=00acee)](https://github.com/myConsciousness)

[![pub package](https://img.shields.io/pub/v/twitter_oembed_api.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/twitter_oembed_api)
[![Dart SDK Version](https://badgen.net/pub/sdk-version/twitter_oembed_api)](https://pub.dev/packages/twitter_oembed_api/)
[![Test](https://github.com/twitter-dart/twitter-oembed-api/actions/workflows/test.yml/badge.svg)](https://github.com/twitter-dart/twitter-oembed-api/actions/workflows/test.yml)
[![Analyzer](https://github.com/twitter-dart/twitter-oembed-api/actions/workflows/analyzer.yml/badge.svg)](https://github.com/twitter-dart/twitter-oembed-api/actions/workflows/analyzer.yml)
[![Issues](https://img.shields.io/github/issues/twitter-dart/twitter-oembed-api?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-oembed-api/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/twitter-dart/twitter-oembed-api?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-oembed-api/pulls)
[![Stars](https://img.shields.io/github/stars/twitter-dart/twitter-oembed-api?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-oembed-api)
[![Contributors](https://img.shields.io/github/contributors/twitter-dart/twitter-oembed-api)](https://github.com/twitter-dart/twitter-oembed-api/graphs/contributors)
[![Code size](https://img.shields.io/github/languages/code-size/twitter-dart/twitter-oembed-api?logo=github&logoColor=white)](https://github.com/twitter-dart/twitter-oembed-api)
[![Last Commits](https://img.shields.io/github/last-commit/twitter-dart/twitter-oembed-api?logo=git&logoColor=white)](https://github.com/twitter-dart/twitter-oembed-api/commits/main)
[![License](https://img.shields.io/github/license/twitter-dart/twitter-oembed-api?logo=open-source-initiative&logoColor=green)](https://github.com/twitter-dart/twitter-oembed-api/blob/main/LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](https://github.com/twitter-dart/twitter-oembed-api/blob/main/CODE_OF_CONDUCT.md)

---

<!-- TOC -->

- [1. Guide 🌎](#1-guide-)
  - [1.1. Features 💎](#11-features-)
  - [1.2. Getting Started ⚡](#12-getting-started-)
    - [1.2.1. Install Library](#121-install-library)
    - [1.2.2. Import](#122-import)
    - [1.2.3. Implementation](#123-implementation)
  - [1.3. Supported Features 👀](#13-supported-features-)
    - [1.3.1. Embedded Tweet](#131-embedded-tweet)
    - [1.3.2. Embedded Timeline](#132-embedded-timeline)
  - [1.4. Contribution 🏆](#14-contribution-)
  - [1.5. Related Libraries 📢](#15-related-libraries-)
  - [1.6. License 🔑](#16-license-)
  - [1.7. More Information 🧐](#17-more-information-)

<!-- /TOC -->

# 1. Guide 🌎

This library provides the easiest way to use the [Twitter oEmbed API](https://developer.twitter.com/en/docs/twitter-for-websites/oembed-api) in Dart and Flutter apps.

**Show some ❤️ and star the repo to support the project.**

## 1.1. Features 💎

## 1.2. Getting Started ⚡

### 1.2.1. Install Library

**With Dart:**

```bash
 dart pub add twitter_oembed_api
```

**With Flutter:**

```bash
 flutter pub add twitter_oembed_api
```

### 1.2.2. Import

```dart
import 'package:twitter_oembed_api/twitter_oembed_api';
```

### 1.2.3. Implementation

```dart
import 'package:twitter_oembed_api/twitter_oembed_api.dart';

Future<void> main() async {
  final twitterApi = TwitterOEmbedApi();

  try {
    // You can get the embedded tweet by specifying the tweet ID.
    final embeddedTweet = await twitterApi.publishEmbeddedTweet(
      tweetId: '507185938620219395',
      maxWidth: 550,
      align: ContentAlign.center,
    );

    print(embeddedTweet.html);

    // You can get the embedded timeline by specifying the screen name.
    // Or the embedded timeline of the list.
    final embeddedTimeline = await twitterApi.publishEmbeddedTimeline(
      screenName: 'TwitterDev',
      theme: ContentTheme.dark,
    );

    print(embeddedTimeline.html);
  } on TwitterOEmbedException catch (e) {
    print(e);
  }
}
```

## 1.3. Supported Features 👀

### 1.3.1. [Embedded Tweet](https://developer.twitter.com/en/docs/twitter-for-websites/embedded-tweets/overview)

| Method                                                                                                                                        |
| --------------------------------------------------------------------------------------------------------------------------------------------- |
| [publishEmbeddedTweet](https://pub.dev/documentation/twitter_oembed_api/latest/twitter_oembed_api/TwitterOEmbedApi/publishEmbeddedTweet.html) |

**Embedded Tweets** bring your pick of content from Twitter into your website articles. An **embedded tweet** includes photos, video and cards media created for display on Twitter, and can even stream live video from Periscope. All aspects of Twitter’s display requirements are handled for you by using our tools; author attribution, Tweet actions, hashtags, mentions, and other key components of the Twitter experience.

The returned HTML snippet will be automatically recognized as an **embedded tweet** when [Twitter's widget JavaScript is included on the page](https://developer.twitter.com/en/docs/twitter-for-websites/javascript-api/overview).

With this feature, you can easily show the following beautiful tweet view in the Flutter app.

![embedded tweet](https://user-images.githubusercontent.com/13072231/183929154-152b06fa-454b-4d71-bf82-7522887c5109.png)

### 1.3.2. [Embedded Timeline](https://developer.twitter.com/en/docs/twitter-for-websites/timelines/overview)

| Method                                                                                                                                              |
| --------------------------------------------------------------------------------------------------------------------------------------------------- |
| [publishEmbeddedTimeline](https://pub.dev/documentation/twitter_oembed_api/latest/twitter_oembed_api/TwitterOEmbedApi/publishEmbeddedTimeline.html) |

**Embedded timelines** are an easy way to embed Tweets on your website in a compact, linear view. Choose between a profile timeline to get the latest Tweets from a Twitter account, or a List timeline containing a curated list of Twitter accounts.
An **embedded timeline** consists of two parts: including an embed code that links your webpage to the timeline on Twitter.com, and the Twitter for Websites JavaScript to transform the link into a fully-rendered timeline.

With this feature, you can easily show the following beautiful timeline view in the Flutter app.

![embedded timeline](https://user-images.githubusercontent.com/13072231/183933383-d1423e92-9593-4dcf-9d02-0666b3b9de1d.png)

## 1.4. Contribution 🏆

If you would like to contribute to **twitter_oembed_api**, please create an [issue](https://github.com/twitter-dart/twitter-oembed-api/issues) or create a Pull Request.

There are many ways to contribute to the OSS. For example, the following subjects can be considered:

- There are request parameters or response fields that are not implemented.
- Documentation is outdated or incomplete.
- Have a better way or idea to achieve the functionality.
- etc...

You can see more details from resources below:

- [Contributor Covenant Code of Conduct](https://github.com/twitter-dart/twitter-oembed-api/blob/main/CODE_OF_CONDUCT.md)
- [Contribution Guidelines](https://github.com/twitter-dart/twitter-oembed-api/blob/main/CONTRIBUTING.md)
- [Style Guide](https://github.com/twitter-dart/twitter-oembed-api/blob/main/STYLEGUIDE.md)

Or you can create a [discussion](https://github.com/twitter-dart/twitter-oembed-api/discussions) if you like.

**Feel free to join this development, diverse opinions make software better!**

## 1.5. Related Libraries 📢

We also provide the following powerful libraries related to Twitter! 🐦

| Library                 | Description                                                                                                                                                                                                                                            | Links                                                                                                                       |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------- |
| **twitter_api_v2**      | The easiest way to using [Twitter API v2.0](https://developer.twitter.com/en/docs/twitter-api/data-dictionary/introduction) with Dart and Flutter. Strong support for all [v2.0 endpoints](https://developer.twitter.com/en/docs/api-reference-index). | [GitHub](https://github.com/twitter-dart/twitter-api-v2) </br> [Pub.dev](https://pub.dev/packages/twitter_api_v2)           |
| **twitter_oauth2_pkce** | This is the easiest way to obtain a Twitter access token using the [OAuth 2.0 PKCE](https://developer.twitter.com/en/docs/authentication/oauth-2-0/authorization-code) method.                                                                         | [GitHub](https://github.com/twitter-dart/twitter-oauth2-pkce) </br> [Pub.dev](https://pub.dev/packages/twitter_oauth2_pkce) |
| **twitter_cards**       | This library provides the easiest way to integrate [Twitter Cards](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/abouts-cards) into your Flutter Web app.                                                                  | [GitHub](https://github.com/twitter-dart/twitter-cards) </br> [Pub.dev](https://pub.dev/packages/twitter_cards)             |

## 1.6. License 🔑

All resources of **twitter_oembed_api** is provided under the `BSD-3` license.

```license
Copyright 2022 Kato Shinya. All rights reserved.
Redistribution and use in source and binary forms, with or without
modification, are permitted provided the conditions.
```

> **Note**</br>
> License notices in the source are strictly validated based on `.github/header-checker-lint.yml`. Please check [header-checker-lint.yml](https://github.com/twitter-dart/twitter-oembed-api/tree/main/.github/header-checker-lint.yml) for the permitted standards.

## 1.7. More Information 🧐

**twitter_oembed_api** was designed and implemented by **_Kato Shinya ([@myConsciousness](https://github.com/myConsciousness))_**.

- [Creator Profile](https://github.com/myConsciousness)
- [License](https://github.com/twitter-dart/twitter-oembed-api/blob/main/LICENSE)
- [API Document](https://pub.dev/documentation/twitter_oembed_api/latest/twitter_oembed_api/twitter_oembed_api-library.html)
- [Release Note](https://github.com/twitter-dart/twitter-oembed-api/releases)
- [Bug Report](https://github.com/twitter-dart/twitter-oembed-api/issues)
