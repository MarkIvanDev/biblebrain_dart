// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alphabet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlphabetsResult _$AlphabetsResultFromJson(Map<String, dynamic> json) =>
    AlphabetsResult(
      (json['data'] as List<dynamic>?)
          ?.map((e) => Alphabet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlphabetsResultToJson(AlphabetsResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

AlphabetInfoResult _$AlphabetInfoResultFromJson(Map<String, dynamic> json) =>
    AlphabetInfoResult(
      json['data'] == null
          ? null
          : AlphabetInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AlphabetInfoResultToJson(AlphabetInfoResult instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

Alphabet _$AlphabetFromJson(Map<String, dynamic> json) => Alphabet(
      json['name'] as String?,
      json['script'] as String?,
      json['family'] as String?,
      json['type'] as String?,
      const AlphabetDirectionConverter().fromJson(json['direction'] as String?),
    );

Map<String, dynamic> _$AlphabetToJson(Alphabet instance) => <String, dynamic>{
      'name': instance.name,
      'script': instance.script,
      'family': instance.family,
      'type': instance.type,
      'direction':
          const AlphabetDirectionConverter().toJson(instance.direction),
    };

AlphabetFont _$AlphabetFontFromJson(Map<String, dynamic> json) => AlphabetFont(
      json['id'] as int?,
      json['fontName'] as String?,
      json['fontFileName'] as String?,
      json['fontWeight'] as int?,
      json['copyright'] as String?,
      json['url'] as String?,
      json['notes'] as String?,
      json['italic'] as String?,
    );

Map<String, dynamic> _$AlphabetFontToJson(AlphabetFont instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fontName': instance.fontName,
      'fontFileName': instance.fontFileName,
      'fontWeight': instance.fontWeight,
      'copyright': instance.copyright,
      'url': instance.url,
      'notes': instance.notes,
      'italic': instance.italic,
    };

AlphabetLanguagePivot _$AlphabetLanguagePivotFromJson(
        Map<String, dynamic> json) =>
    AlphabetLanguagePivot(
      json['script_id'] as String?,
      json['language_id'] as int?,
    );

Map<String, dynamic> _$AlphabetLanguagePivotToJson(
        AlphabetLanguagePivot instance) =>
    <String, dynamic>{
      'script_id': instance.scriptId,
      'language_id': instance.languageId,
    };

AlphabetLanguage _$AlphabetLanguageFromJson(Map<String, dynamic> json) =>
    AlphabetLanguage(
      json['id'] as int?,
      json['glotto_id'] as String?,
      json['iso'] as String?,
      json['iso2B'] as String?,
      json['iso2T'] as String?,
      json['iso1'] as String?,
      json['name'] as String?,
      json['maps'] as String?,
      json['development'] as String?,
      json['use'] as String?,
      json['location'] as String?,
      json['area'] as String?,
      json['population'] as int?,
      json['population_notes'] as String?,
      json['notes'] as String?,
      json['typology'] as String?,
      json['writing'] as String?,
      (json['latitude'] as num?)?.toDouble(),
      (json['longitude'] as num?)?.toDouble(),
      json['status_id'] as String?,
      json['country_id'] as String?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['pivot'] == null
          ? null
          : AlphabetLanguagePivot.fromJson(
              json['pivot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AlphabetLanguageToJson(AlphabetLanguage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'glotto_id': instance.glottoId,
      'iso': instance.iso,
      'iso2B': instance.iso2B,
      'iso2T': instance.iso2T,
      'iso1': instance.iso1,
      'name': instance.name,
      'maps': instance.maps,
      'development': instance.development,
      'use': instance.use,
      'location': instance.location,
      'area': instance.area,
      'population': instance.population,
      'population_notes': instance.populationNotes,
      'notes': instance.notes,
      'typology': instance.typology,
      'writing': instance.writing,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'status_id': instance.statusId,
      'country_id': instance.countryId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'pivot': instance.pivot?.toJson(),
    };

AlphabetInfo _$AlphabetInfoFromJson(Map<String, dynamic> json) => AlphabetInfo(
      json['script'] as String?,
      json['name'] as String?,
      json['unicode_pdf'] as String?,
      json['family'] as String?,
      json['type'] as String?,
      json['white_space'] as String?,
      json['open_type_tag'] as String?,
      json['complex_positioning'] as bool?,
      json['requires_font'] as bool?,
      json['unicode'] as bool?,
      json['diacritics'] as bool?,
      json['contextual_forms'] as bool?,
      json['reordering'] as bool?,
      json['case'] as bool?,
      json['split_graphs'] as bool?,
      const AlphabetStatusConverter().fromJson(json['status'] as String?),
      const AlphabetBaselineConverter().fromJson(json['baseline'] as String?),
      const AlphabetLigatureConverter().fromJson(json['ligatures'] as String?),
      const AlphabetDirectionConverter().fromJson(json['direction'] as String?),
      json['direction_notes'] as String?,
      json['sample'] as String?,
      json['sample_img'] as String?,
      json['description'] as String?,
      (json['fonts'] as List<dynamic>?)
          ?.map((e) => AlphabetFont.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['languages'] as List<dynamic>?)
          ?.map((e) => AlphabetLanguage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlphabetInfoToJson(AlphabetInfo instance) =>
    <String, dynamic>{
      'script': instance.script,
      'name': instance.name,
      'unicode_pdf': instance.unicodePdf,
      'family': instance.family,
      'type': instance.type,
      'white_space': instance.whiteSpace,
      'open_type_tag': instance.openTypeTag,
      'complex_positioning': instance.complexPositioning,
      'requires_font': instance.requiresFont,
      'unicode': instance.unicode,
      'diacritics': instance.diacritics,
      'contextual_forms': instance.contextualForms,
      'reordering': instance.reordering,
      'case': instance.alphabetCase,
      'split_graphs': instance.splitGraphs,
      'status': const AlphabetStatusConverter().toJson(instance.status),
      'baseline': const AlphabetBaselineConverter().toJson(instance.baseline),
      'ligatures': const AlphabetLigatureConverter().toJson(instance.ligatures),
      'direction':
          const AlphabetDirectionConverter().toJson(instance.direction),
      'direction_notes': instance.directionNotes,
      'sample': instance.sample,
      'sample_img': instance.sampleImg,
      'description': instance.description,
      'fonts': instance.fonts?.map((e) => e.toJson()).toList(),
      'languages': instance.languages?.map((e) => e.toJson()).toList(),
    };

AlphabetBible _$AlphabetBibleFromJson(Map<String, dynamic> json) =>
    AlphabetBible(
      json['id'] as String?,
      json['language_id'] as int?,
      const BibleVersificationConverter()
          .fromJson(json['versification'] as String?),
      json['numeral_system_id'] as String?,
      json['date'] as String?,
      json['scope'] as String?,
      json['script'] as String?,
      json['derived'] as String?,
      json['copyright'] as String?,
      json['reviewed'] as int?,
      json['notes'] as String?,
      json['current_translation'] == null
          ? null
          : AlphabetBibleTranslation.fromJson(
              json['current_translation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AlphabetBibleToJson(AlphabetBible instance) =>
    <String, dynamic>{
      'id': instance.id,
      'language_id': instance.languageId,
      'versification':
          const BibleVersificationConverter().toJson(instance.versification),
      'numeral_system_id': instance.numeralSystemId,
      'date': instance.date,
      'scope': instance.scope,
      'script': instance.script,
      'derived': instance.derived,
      'copyright': instance.copyright,
      'reviewed': instance.reviewed,
      'notes': instance.notes,
      'current_translation': instance.currentTranslation?.toJson(),
    };

AlphabetBibleTranslation _$AlphabetBibleTranslationFromJson(
        Map<String, dynamic> json) =>
    AlphabetBibleTranslation(
      json['language_id'] as int?,
      json['bible_id'] as String?,
      json['vernacular'] as int?,
      json['vernacular_trade'] as int?,
      json['name'] as String?,
      json['description'] as String?,
      json['background'] as String?,
    );

Map<String, dynamic> _$AlphabetBibleTranslationToJson(
        AlphabetBibleTranslation instance) =>
    <String, dynamic>{
      'language_id': instance.languageId,
      'bible_id': instance.bibleId,
      'vernacular': instance.vernacular,
      'vernacular_trade': instance.vernacularTrade,
      'name': instance.name,
      'description': instance.description,
      'background': instance.background,
    };
