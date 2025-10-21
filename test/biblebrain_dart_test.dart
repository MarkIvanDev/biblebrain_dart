import 'package:biblebrain_dart/biblebrain_dart.dart';
import 'package:test/test.dart';
import 'env.dart';

void main() {
  late final BibleBrainClient client;

  setUpAll(() {
    client = BibleBrainClient(apiKey: Env.apiKey);
  });

  group('Alphabet', () {
    test('getAlphabets', () async {
      final alphabets = await client.alphabet.getAlphabets();
      expect(alphabets, isNotNull);
    });

    test('getAlphabet', () async {
      final alphabet = await client.alphabet.getAlphabet(alphabetId: 'Latn');
      expect(alphabet, isNotNull);
    });
  });

  group('Bible', () {
    test(
      'getBibles',
      () async {
        final bibles = await client.bible.getBibles();
        expect(bibles.isNotEmpty, isTrue);
      },
      timeout: const Timeout(Duration(minutes: 1)),
      skip: true,
    );

    test('getBiblesPaginated', () async {
      final bibles = await client.bible.getBiblesPaginated(page: 1);
      expect(bibles, isNotNull);
    });

    test('getBible', () async {
      final kjvBible = await client.bible.getBible(bibleId: 'ENGKJV');
      expect(kjvBible, isNotNull);

      final esvBible = await client.bible.getBible(bibleId: 'ENGESV');
      expect(esvBible, isNotNull);
    });

    test('getBooks', () async {
      final kjvBooks = await client.bible.getBooks(bibleId: 'ENGKJV');
      expect(kjvBooks, isNotNull);

      final esvBooks = await client.bible.getBooks(bibleId: 'ENGESV');
      expect(esvBooks, isNotNull);
    });

    test('getCopyright', () async {
      final copyright = await client.bible.getCopyright(bibleId: 'ENGNAS');
      expect(copyright.isNotEmpty, isTrue);
    });

    test('getChapter', () async {
      final chapter = await client.bible.getChapter(
        filesetId: 'ENGKJV',
        bookId: 'GEN',
        chapter: 1,
      );
      expect(chapter, isNotNull);
    });

    test('getDefaultBibles', () async {
      final defaultBibles = await client.bible.getDefaultBibles();
      expect(defaultBibles, isNotNull);
      expect(defaultBibles?.isNotEmpty, isTrue);
    });

    test('getMediaTypes', () async {
      final mediaTypes = await client.bible.getMediaTypes();
      expect(mediaTypes, isNotNull);
      expect(mediaTypes?.isNotEmpty, isTrue);
    });

    test('getVersesByLanguage', () async {
      final verses = await client.bible.getVersesByLanguage(
        languageCode: 'eng',
        bookId: 'MAT',
        chapter: 1,
      );
      expect(verses.isNotEmpty, isTrue);
    }, skip: true);

    test('getVersesByLanguagePaginated', () async {
      final verses = await client.bible.getVersesByLanguagePaginated(
        languageCode: 'eng',
        bookId: 'MAT',
        chapter: 1,
        page: 1,
      );
      expect(verses, isNotNull);
    });

    test('getVersesByVersion', () async {
      final verses = await client.bible.getVersesByVersion(
        bibleId: 'ENGKJV',
        bookId: 'MAT',
        chapter: 1,
      );
      expect(verses.isNotEmpty, isTrue);
    }, skip: true);

    test('getVersesByVersionPaginated', () async {
      final verses = await client.bible.getVersesByVersionPaginated(
        bibleId: 'ENGKJV',
        bookId: 'MAT',
        chapter: 1,
        page: 1,
      );
      expect(verses, isNotNull);
    });

    test('searchBiblesByVersion', () async {
      final bibles = await client.bible.searchBiblesByVersion(version: 'KJV');
      expect(bibles.isNotEmpty, isTrue);
    }, skip: true);

    test('searchBiblesByVersionPaginated', () async {
      final bibles = await client.bible.searchBiblesByVersionPaginated(
        version: 'KJV',
        page: 1,
      );
      expect(bibles, isNotNull);
    });

    test('searchBibles', () async {
      final bibles = await client.bible.searchBibles(searchText: 'king');
      expect(bibles.isNotEmpty, isTrue);
    }, skip: true);

    test('searchBiblesPaginated', () async {
      final bibles = await client.bible.searchBiblesPaginated(
        searchText: 'king',
        page: 1,
      );
      expect(bibles, isNotNull);
    });

    test('getVerseInfo', () async {
      final verses = await client.bible.getVerseInfo(
        filesetId: 'ENGKJV',
        bookId: 'MAT',
        chapter: 1,
      );
      expect(verses, isNotNull);
    });
  });

  group('Country', () {
    test('getCountries', () async {
      final countries = await client.country.getCountries();
      expect(countries.isNotEmpty, isTrue);
    }, skip: true);

    test('getCountriesPaginated', () async {
      final countries = await client.country.getCountriesPaginated(page: 1);
      expect(countries, isNotNull);
    });

    test('getCountry', () async {
      final country = await client.country.getCountry(countryId: 'PH');
      expect(country, isNotNull);
    });

    test('searchCountries', () async {
      final countries = await client.country.searchCountries(
        searchText: 'south',
      );
      expect(countries.isNotEmpty, isTrue);
    }, skip: true);

    test('searchCountriesPaginated', () async {
      final countries = await client.country.searchCountriesPaginated(
        searchText: 'south',
        page: 1,
      );
      expect(countries, isNotNull);
    });
  });

  group('Download', () {
    test(
      'getDownloadableFilesets',
      () async {
        final filesets = await client.download.getDownloadableFilesets();
        expect(filesets.isNotEmpty, isTrue);
      },
      timeout: const Timeout(Duration(minutes: 1)),
      skip: true,
    );

    test('getDownloadableFilesetsPaginated', () async {
      final filesets = await client.download.getDownloadableFilesetsPaginated(
        page: 1,
      );
      expect(filesets, isNotNull);
    });

    test('getDownloadContent', () async {
      final contents = await client.download.getDownloadContent(
        filesetId: 'ENGKJV',
        bookId: 'MAT',
        chapter: 1,
      );
      expect(contents, isNotNull);
    });
  });

  group('Language', () {
    test(
      'getLanguages',
      () async {
        final languages = await client.language.getLanguages();
        expect(languages.isNotEmpty, isTrue);
      },
      timeout: const Timeout(Duration(minutes: 1)),
      skip: true,
    );

    test('getLanguagesPaginated', () async {
      final languages = await client.language.getLanguagesPaginated(page: 1);
      expect(languages, isNotNull);
    });

    test('getLanguage', () async {
      final language = await client.language.getLanguage(languageId: 6513);
      expect(language, isNotNull);
    });

    test('searchLanguages', () async {
      final languages = await client.language.searchLanguages(
        searchText: 'tagalog',
      );
      expect(languages.isNotEmpty, isTrue);
    }, skip: true);

    test('searchLanguagesPaginated', () async {
      final languages = await client.language.searchLanguagesPaginated(
        searchText: 'tagalog',
        page: 1,
      );
      expect(languages, isNotNull);
    });
  });

  group('Number', () {
    test('getNumbers', () async {
      final numbers = await client.number.getNumbers();
      expect(numbers, isNotNull);
    });

    test('getNumber', () async {
      final number = await client.number.getNumber(numeralSystem: 'thai');
      expect(number, isNotNull);
    });
  });

  group('Search', () {
    test('search', () async {
      final searches = await client.search.search(
        query: 'love',
        filesetId: 'ENGKJV',
      );
      expect(searches.isNotEmpty, isTrue);
    }, skip: true);

    test('searchPaginated', () async {
      final searches = await client.search.searchPaginated(
        query: 'love',
        filesetId: 'ENGKJV',
        page: 1,
      );
      expect(searches, isNotNull);
    });
  });

  group('Timestamp', () {
    test('getFilesetsWithTimestamps', () async {
      final filesets = await client.timestamp.getFilesetsWithTimestamps();
      expect(filesets.isNotEmpty, isTrue);
    });

    test('getTimestamps', () async {
      final timestamps = await client.timestamp.getTimestamps(
        filesetId: 'ENGKJVO1DA',
        bookId: 'GEN',
        chapter: 1,
      );
      expect(timestamps, isNotNull);
    });
  });
}
