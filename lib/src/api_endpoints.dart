class ApiEndpoints {
  static const String base = 'https://4.dbt.io/api/';

  static const String languages = 'languages';
  static String getLanguage(int languageId) => 'languages/$languageId';
  static String getLanguageSearch(String searchText) =>
      'languages/search/$searchText';

  static const String countries = 'countries';
  static String getCountry(String countryId) => 'countries/$countryId';
  static String getCountrySearch(String searchText) =>
      'countries/search/$searchText';

  static const String alphabets = 'alphabets';
  static String getAlphabet(String alphabetId) => 'alphabets/$alphabetId';

  static const String numbers = 'numbers';
  static const String numbersRange = 'numbers/range';
  static String getNumber(String numeralSystem) => 'numbers/$numeralSystem';

  static const String bibles = 'bibles';
  static String getBible(String bibleId) => 'bibles/$bibleId';
  static String getBooks(String bibleId) => 'bibles/$bibleId/book';
  static String getChapter(String filesetId, String bookId, int chapter) =>
      'bibles/filesets/$filesetId/$bookId/$chapter';
  static String getCopyright(String bibleId) => 'bibles/$bibleId/copyright';
  static String getVersesByLanguage(
          String languageCode, String bookId, int chapter,
          {int? verse}) =>
      'bibles/verses/$languageCode/$bookId/$chapter/${verse ?? ''}';
  static String getVersesByVersion(String bibleId, String bookId, int chapter,
          {int? verse}) =>
      'bible/$bibleId/verses/$bookId/$chapter/${verse ?? ''}';
  static const String defaultBibles = 'bibles/defaults/types';
  static const String mediaTypes = 'bibles/filesets/media/types';
  static const String bibleSearch = 'bibles/search';
  static String getBibleSearch(String searchText) =>
      'bibles/search/$searchText';
  static String getVerseInfo(String filesetId, String bookId, {int? chapter}) =>
      'bibles/$filesetId/$bookId/${chapter ?? ''}';

  static const String downloadList = 'download/list/';
  static String getDownload(String filesetId, String bookId, {int? chapter}) =>
      'download/$filesetId/$bookId/${chapter ?? ''}';

  static const String timestamps = 'timestamps/';
  static String getTimestamps(String filesetId, String bookId, int chapter) =>
      'timestamps/$filesetId/$bookId/$chapter';

  static const String search = 'search/';
}
