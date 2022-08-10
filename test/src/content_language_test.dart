// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'package:test/test.dart';
import 'package:twitter_oembed_api/src/content_language.dart';

void main() {
  test('.name', () {
    expect(ContentLanguage.english.name, 'english');
    expect(ContentLanguage.arabic.name, 'arabic');
    expect(ContentLanguage.bengali.name, 'bengali');
    expect(ContentLanguage.czech.name, 'czech');
    expect(ContentLanguage.danish.name, 'danish');
    expect(ContentLanguage.german.name, 'german');
    expect(ContentLanguage.greek.name, 'greek');
    expect(ContentLanguage.spanish.name, 'spanish');
    expect(ContentLanguage.persian.name, 'persian');
    expect(ContentLanguage.finnish.name, 'finnish');
    expect(ContentLanguage.filipino.name, 'filipino');
    expect(ContentLanguage.french.name, 'french');
    expect(ContentLanguage.hebrew.name, 'hebrew');
    expect(ContentLanguage.hindi.name, 'hindi');
    expect(ContentLanguage.hungarian.name, 'hungarian');
    expect(ContentLanguage.indonesian.name, 'indonesian');
    expect(ContentLanguage.italian.name, 'italian');
    expect(ContentLanguage.japanese.name, 'japanese');
    expect(ContentLanguage.korean.name, 'korean');
    expect(ContentLanguage.malay.name, 'malay');
    expect(ContentLanguage.dutch.name, 'dutch');
    expect(ContentLanguage.norwegian.name, 'norwegian');
    expect(ContentLanguage.polish.name, 'polish');
    expect(ContentLanguage.portuguese.name, 'portuguese');
    expect(ContentLanguage.romanian.name, 'romanian');
    expect(ContentLanguage.russian.name, 'russian');
    expect(ContentLanguage.swedish.name, 'swedish');
    expect(ContentLanguage.thai.name, 'thai');
    expect(ContentLanguage.turkish.name, 'turkish');
    expect(ContentLanguage.ukrainian.name, 'ukrainian');
    expect(ContentLanguage.urdu.name, 'urdu');
    expect(ContentLanguage.vietnamese.name, 'vietnamese');
    expect(ContentLanguage.simplifiedChinese.name, 'simplifiedChinese');
    expect(ContentLanguage.traditionalChinese.name, 'traditionalChinese');
  });

  test('.code', () {
    expect(ContentLanguage.english.code, 'en');
    expect(ContentLanguage.arabic.code, 'ar');
    expect(ContentLanguage.bengali.code, 'bn');
    expect(ContentLanguage.czech.code, 'cs');
    expect(ContentLanguage.danish.code, 'da');
    expect(ContentLanguage.german.code, 'de');
    expect(ContentLanguage.greek.code, 'el');
    expect(ContentLanguage.spanish.code, 'es');
    expect(ContentLanguage.persian.code, 'fa');
    expect(ContentLanguage.finnish.code, 'fi');
    expect(ContentLanguage.filipino.code, 'fil');
    expect(ContentLanguage.french.code, 'fr');
    expect(ContentLanguage.hebrew.code, 'he');
    expect(ContentLanguage.hindi.code, 'hi');
    expect(ContentLanguage.hungarian.code, 'hu');
    expect(ContentLanguage.indonesian.code, 'id');
    expect(ContentLanguage.italian.code, 'it');
    expect(ContentLanguage.japanese.code, 'ja');
    expect(ContentLanguage.korean.code, 'ko');
    expect(ContentLanguage.malay.code, 'msa');
    expect(ContentLanguage.dutch.code, 'nl');
    expect(ContentLanguage.norwegian.code, 'no');
    expect(ContentLanguage.polish.code, 'pl');
    expect(ContentLanguage.portuguese.code, 'pt');
    expect(ContentLanguage.romanian.code, 'ro');
    expect(ContentLanguage.russian.code, 'ru');
    expect(ContentLanguage.swedish.code, 'sv');
    expect(ContentLanguage.thai.code, 'th');
    expect(ContentLanguage.turkish.code, 'tr');
    expect(ContentLanguage.ukrainian.code, 'uk');
    expect(ContentLanguage.urdu.code, 'ur');
    expect(ContentLanguage.vietnamese.code, 'vi');
    expect(ContentLanguage.simplifiedChinese.code, 'zh-cn');
    expect(ContentLanguage.traditionalChinese.code, 'zh-tw');
  });
}
