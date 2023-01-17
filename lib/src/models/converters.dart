import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

abstract class EnumConverter<K extends Enum>
    extends JsonConverter<K?, String?> {
  final Map<K, String> map;

  const EnumConverter(this.map);

  @override
  K? fromJson(String? json) {
    for (var entry in map.entries) {
      if (entry.value == (json?.toLowerCase() ?? '')) {
        return entry.key;
      }
    }
    return null;
  }

  @override
  String? toJson(K? object) {
    return map[object];
  }
}

class AlphabetDirectionConverter extends EnumConverter<AlphabetDirection> {
  const AlphabetDirectionConverter() : super(_map);

  static const _map = {
    AlphabetDirection.unknown: '',
    AlphabetDirection.ltr: 'ltr',
    AlphabetDirection.rtl: 'rtl'
  };
}

class AlphabetStatusConverter extends EnumConverter<AlphabetStatus> {
  const AlphabetStatusConverter() : super(_map);

  static const _map = {
    AlphabetStatus.current: 'current',
    AlphabetStatus.historical: 'historical',
    AlphabetStatus.fictional: 'fictional',
    AlphabetStatus.unclear: 'unclear',
  };
}

class AlphabetBaselineConverter extends EnumConverter<AlphabetBaseline> {
  const AlphabetBaselineConverter() : super(_map);

  static const _map = {
    AlphabetBaseline.hanging: 'hanging',
    AlphabetBaseline.centered: 'centered',
    AlphabetBaseline.bottom: 'bottom',
    AlphabetBaseline.vertical: 'vertical',
  };
}

class AlphabetLigatureConverter extends EnumConverter<AlphabetLigature> {
  const AlphabetLigatureConverter() : super(_map);

  static const _map = {
    AlphabetLigature.none: 'none',
    AlphabetLigature.required: 'required',
    AlphabetLigature.optional: 'optional',
  };
}

class BibleVersificationConverter extends EnumConverter<BibleVersification> {
  const BibleVersificationConverter() : super(_map);

  static const _map = {
    BibleVersification.protestant: 'protestant',
    BibleVersification.luther: 'luther',
    BibleVersification.synodal: 'synodal',
    BibleVersification.german: 'german',
    BibleVersification.kjva: 'kjva',
    BibleVersification.vulgate: 'vulgate',
    BibleVersification.lxx: 'lxx',
    BibleVersification.orthodox: 'orthodox',
    BibleVersification.nrsva: 'nrsva',
    BibleVersification.catholic: 'catholic',
    BibleVersification.finnish: 'finnish',
    BibleVersification.messianic: 'messianic',
  };
}

class MediaTypeConverter extends EnumConverter<MediaType> {
  const MediaTypeConverter() : super(_map);

  static const _map = {
    MediaType.textPlain: 'text_plain',
    MediaType.textFormat: 'text_format',
    MediaType.textUsx: 'text_usx',
    MediaType.textHtml: 'text_html',
    MediaType.audio: 'audio',
    MediaType.audioDrama: 'audio_drama',
    MediaType.audioStream: 'audio_stream',
    MediaType.audioDramaStream: 'audio_drama_stream',
    MediaType.videoStream: 'video_stream'
  };
}

class BookTestamentConverter extends EnumConverter<BookTestament> {
  const BookTestamentConverter() : super(_map);

  static const _map = {
    BookTestament.ot: 'ot',
    BookTestament.nt: 'nt',
    BookTestament.ap: 'ap'
  };
}

typedef ConverterFromJson<V> = V Function(dynamic);

abstract class MapOrEmptyArrayConverter<K, V>
    extends JsonConverter<Map<K, V>, dynamic> {
  final ConverterFromJson<V> _converterFromJson;

  const MapOrEmptyArrayConverter(this._converterFromJson);

  @override
  Map<K, V> fromJson(json) {
    if (json is Map<dynamic, dynamic>) {
      return json.map(
        (k, e) => MapEntry(k as K, _converterFromJson(e)),
      );
    } else {
      return <K, V>{};
    }
  }

  @override
  toJson(Map<K, V> object) {
    throw UnimplementedError();
  }
}

class CountryInfoMapInfoMapOrEmptyArrayConverter
    extends MapOrEmptyArrayConverter<String, CountryInfoMapInfo> {
  const CountryInfoMapInfoMapOrEmptyArrayConverter()
      : super(_jsonToCountryInfoMapInfo);

  static CountryInfoMapInfo _jsonToCountryInfoMapInfo(dynamic json) {
    return CountryInfoMapInfo.fromJson(json as Map<String, dynamic>);
  }
}

class StringMapOrEmptyArrayConverter
    extends MapOrEmptyArrayConverter<String, String> {
  const StringMapOrEmptyArrayConverter() : super(_jsonToString);

  static String _jsonToString(dynamic json) {
    return json as String;
  }
}

class IntStringMapOrEmptyArrayConverter
    extends MapOrEmptyArrayConverter<int, String> {
  const IntStringMapOrEmptyArrayConverter() : super(_jsonToString);

  static String _jsonToString(dynamic json) {
    return json as String;
  }
}

class FilesetsConverter extends JsonConverter<Filesets?, dynamic> {
  const FilesetsConverter();

  @override
  Filesets? fromJson(json) {
    if (json is Map<String, dynamic>) {
      return Filesets.fromJson(json);
    } else {
      return null;
    }
  }

  @override
  toJson(Filesets? object) {
    if (object != null) {
      return object.toJson();
    } else {
      return <String, dynamic>{};
    }
  }
}

class VersesResultMetadataPaginationLinksConverter
    extends JsonConverter<VersesResultMetadataPaginationLinks?, dynamic> {
  const VersesResultMetadataPaginationLinksConverter();

  @override
  VersesResultMetadataPaginationLinks? fromJson(json) {
    if (json is Map<String, dynamic>) {
      return VersesResultMetadataPaginationLinks.fromJson(json);
    } else {
      return null;
    }
  }

  @override
  toJson(VersesResultMetadataPaginationLinks? object) {
    throw UnimplementedError();
  }
}

class BibleInfoPublishersConverter
    extends JsonConverter<List<Organization>?, dynamic> {
  const BibleInfoPublishersConverter();

  @override
  List<Organization>? fromJson(json) {
    if (json is List<dynamic>) {
      return json
          .map((e) => Organization.fromJson(e as Map<String, dynamic>))
          .toList();
    } else if (json is Map<String, dynamic>) {
      return json.values
          .map((e) => Organization.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      return null;
    }
  }

  @override
  toJson(List<Organization>? object) {
    throw UnimplementedError();
  }
}
