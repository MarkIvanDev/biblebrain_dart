import 'package:json_annotation/json_annotation.dart';

import 'converters.dart';
import 'core.dart';

part 'alphabet.g.dart';

/// Payload containing the data of a list of alphabets.
@JsonSerializable()
class AlphabetsResult {
  final List<Alphabet>? data;

  const AlphabetsResult(this.data);

  factory AlphabetsResult.fromJson(Map<String, dynamic> json) =>
      _$AlphabetsResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$AlphabetsResultToJson(this);
}

/// Payload containing the data of an alphabet.
@JsonSerializable()
class AlphabetInfoResult {
  final AlphabetInfo? data;

  const AlphabetInfoResult(this.data);

  factory AlphabetInfoResult.fromJson(Map<String, dynamic> json) =>
      _$AlphabetInfoResultFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$AlphabetInfoResultToJson(this);
}

/// An alphabet.
@JsonSerializable()
class Alphabet {
  final String? name;
  final String? script;
  final String? family;
  final String? type;
  @AlphabetDirectionConverter()
  final AlphabetDirection? direction;

  const Alphabet(
      this.name, this.script, this.family, this.type, this.direction);

  factory Alphabet.fromJson(Map<String, dynamic> json) =>
      _$AlphabetFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$AlphabetToJson(this);
}

/// The font information of an [Alphabet].
@JsonSerializable()
class AlphabetFont {
  final int? id;
  final String? fontName;
  final String? fontFileName;
  final int? fontWeight;
  final String? copyright;
  final String? url;
  final String? notes;
  final String? italic;

  const AlphabetFont(this.id, this.fontName, this.fontFileName, this.fontWeight,
      this.copyright, this.url, this.notes, this.italic);

  factory AlphabetFont.fromJson(Map<String, dynamic> json) =>
      _$AlphabetFontFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$AlphabetFontToJson(this);
}

/// A pivot of an [AlphabetLanguage].
@JsonSerializable()
class AlphabetLanguagePivot {
  @JsonKey(name: 'script_id')
  final String? scriptId;
  @JsonKey(name: 'language_id')
  final int? languageId;

  const AlphabetLanguagePivot(this.scriptId, this.languageId);

  factory AlphabetLanguagePivot.fromJson(Map<String, dynamic> json) =>
      _$AlphabetLanguagePivotFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$AlphabetLanguagePivotToJson(this);
}

/// A language of an [Alphabet].
@JsonSerializable()
class AlphabetLanguage {
  final int? id;
  @JsonKey(name: 'glotto_id')
  final String? glottoId;
  final String? iso;
  final String? iso2B;
  final String? iso2T;
  final String? iso1;
  final String? name;
  final String? maps;
  final String? development;
  final String? use;
  final String? location;
  final String? area;
  final int? population;
  @JsonKey(name: 'population_notes')
  final String? populationNotes;
  final String? notes;
  final String? typology;
  final String? writing;
  final double? latitude;
  final double? longitude;
  @JsonKey(name: 'status_id')
  final String? statusId;
  @JsonKey(name: 'country_id')
  final String? countryId;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  final AlphabetLanguagePivot? pivot;

  const AlphabetLanguage(
      this.id,
      this.glottoId,
      this.iso,
      this.iso2B,
      this.iso2T,
      this.iso1,
      this.name,
      this.maps,
      this.development,
      this.use,
      this.location,
      this.area,
      this.population,
      this.populationNotes,
      this.notes,
      this.typology,
      this.writing,
      this.latitude,
      this.longitude,
      this.statusId,
      this.countryId,
      this.createdAt,
      this.updatedAt,
      this.pivot);

  factory AlphabetLanguage.fromJson(Map<String, dynamic> json) =>
      _$AlphabetLanguageFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$AlphabetLanguageToJson(this);
}

/// Information of an alphabet.
@JsonSerializable()
class AlphabetInfo {
  final String? script;
  final String? name;
  @JsonKey(name: 'unicode_pdf')
  final String? unicodePdf;
  final String? family;
  final String? type;
  @JsonKey(name: 'white_space')
  final String? whiteSpace;
  @JsonKey(name: 'open_type_tag')
  final String? openTypeTag;
  @JsonKey(name: 'complex_positioning')
  final bool? complexPositioning;
  @JsonKey(name: 'requires_font')
  final bool? requiresFont;
  final bool? unicode;
  final bool? diacritics;
  @JsonKey(name: 'contextual_forms')
  final bool? contextualForms;
  final bool? reordering;
  @JsonKey(name: 'case')
  final bool? alphabetCase;
  @JsonKey(name: 'split_graphs')
  final bool? splitGraphs;
  @AlphabetStatusConverter()
  final AlphabetStatus? status;
  @AlphabetBaselineConverter()
  final AlphabetBaseline? baseline;
  @AlphabetLigatureConverter()
  final AlphabetLigature? ligatures;
  @AlphabetDirectionConverter()
  final AlphabetDirection? direction;
  @JsonKey(name: 'direction_notes')
  final String? directionNotes;
  final String? sample;
  @JsonKey(name: 'sample_img')
  final String? sampleImg;
  final String? description;
  final List<AlphabetFont>? fonts;
  final List<AlphabetLanguage>? languages;
  final List<AlphabetBible>? bibles;

  const AlphabetInfo(
      this.script,
      this.name,
      this.unicodePdf,
      this.family,
      this.type,
      this.whiteSpace,
      this.openTypeTag,
      this.complexPositioning,
      this.requiresFont,
      this.unicode,
      this.diacritics,
      this.contextualForms,
      this.reordering,
      this.alphabetCase,
      this.splitGraphs,
      this.status,
      this.baseline,
      this.ligatures,
      this.direction,
      this.directionNotes,
      this.sample,
      this.sampleImg,
      this.description,
      this.fonts,
      this.languages,
      this.bibles);

  factory AlphabetInfo.fromJson(Map<String, dynamic> json) =>
      _$AlphabetInfoFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$AlphabetInfoToJson(this);
}

/// A bible of an [Alphabet].
@JsonSerializable()
class AlphabetBible {
  final String? id;
  @JsonKey(name: 'language_id')
  final int? languageId;
  @BibleVersificationConverter()
  final BibleVersification? versification;
  @JsonKey(name: 'numeral_system_id')
  final String? numeralSystemId;
  final String? date;
  final String? scope;
  final String? script;
  final String? derived;
  final String? copyright;
  final int? reviewed;
  final String? notes;
  @JsonKey(name: 'current_translation')
  final AlphabetBibleTranslation? currentTranslation;

  const AlphabetBible(
      this.id,
      this.languageId,
      this.versification,
      this.numeralSystemId,
      this.date,
      this.scope,
      this.script,
      this.derived,
      this.copyright,
      this.reviewed,
      this.notes,
      this.currentTranslation);

  factory AlphabetBible.fromJson(Map<String, dynamic> json) =>
      _$AlphabetBibleFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$AlphabetBibleToJson(this);
}

/// A translation of an [AlphabetBible].
@JsonSerializable()
class AlphabetBibleTranslation {
  @JsonKey(name: 'language_id')
  final int? languageId;
  @JsonKey(name: 'bible_id')
  final String? bibleId;
  final int? vernacular;
  @JsonKey(name: 'vernacular_trade')
  final int? vernacularTrade;
  final String? name;
  final String? description;
  final String? background;

  const AlphabetBibleTranslation(this.languageId, this.bibleId, this.vernacular,
      this.vernacularTrade, this.name, this.description, this.background);

  factory AlphabetBibleTranslation.fromJson(Map<String, dynamic> json) =>
      _$AlphabetBibleTranslationFromJson(json);

  /// Returns the json representation of this model.
  Map<String, dynamic> toJson() => _$AlphabetBibleTranslationToJson(this);
}

/// The status of an alphabet
enum AlphabetStatus { current, historical, fictional, unclear }

/// The baseline of an alphabet
enum AlphabetBaseline { hanging, centered, bottom, vertical }

/// The ligature of an alphabet
enum AlphabetLigature { none, required, optional }
