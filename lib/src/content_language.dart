// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

import 'serializable.dart';

enum ContentLanguage implements Serializable {
  /// `en`
  english('en'),

  /// `ar`
  arabic('ar'),

  /// `bn`
  bengali('bn'),

  /// `cs`
  czech('cs'),

  /// `da`
  danish('da'),

  /// `de`
  german('de'),

  /// `el`
  greek('el'),

  /// `es`
  spanish('es'),

  /// `fa`
  persian('fa'),

  /// `fi`
  finnish('fi'),

  /// `fil`
  filipino('fil'),

  /// `fr`
  french('fr'),

  /// `he`
  hebrew('he'),

  /// `hi`
  hindi('hi'),

  /// `hu`
  hungarian('hu'),

  /// `id`
  indonesian('id'),

  /// `it`
  italian('it'),

  /// `ja`
  japanese('ja'),

  /// `ko`
  korean('ko'),

  /// `msa`
  malay('msa'),

  /// `nl`
  dutch('nl'),

  /// `no`
  norwegian('no'),

  /// `pl`
  polish('pl'),

  /// `pt`
  portuguese('pt'),

  /// `ro`
  romanian('ro'),

  /// `ru`
  russian('ru'),

  /// `sv`
  swedish('sv'),

  /// `th`
  thai('th'),

  /// `tr`
  turkish('tr'),

  /// `uk`
  ukrainian('uk'),

  /// `ur`
  urdu('ur'),

  /// `vi`
  vietnamese('vi'),

  /// `zh-cn`
  simplifiedChinese('zh-cn'),

  /// `zh-tw`
  traditionalChinese('zh-tw');

  @override
  final String value;

  const ContentLanguage(this.value);
}
