import 'package:biblebrain_dart/biblebrain_dart.dart';

void main() async {
  final client = BibleBrainClient(apiKey: '<API-KEY>');

  // Alphabet endpoints
  final alphabets = await client.alphabet.getAlphabets();
  print('${alphabets?.data?.length ?? 0} alphabets found');

  final alphabet = await client.alphabet.getAlphabet('Latn');
  print('${alphabet?.data?.name} alphabet found');

  // Bible endpoints
  final bibles = await client.bible.getBibles();
  print('${bibles.length} bibles found');

  final bible = await client.bible.getBible('ENGKJV');
  print('${bible?.data?.name} bible found');

  final books = await client.bible.getBooks('ENGKJV');
  print('${books?.data?.length} books found');

  final copyright = await client.bible.getCopyright('ENGKJV');
  print('${copyright.length} copyrights found');

  final chapter = await client.bible.getChapter('ENGKJV', 'GEN', 1);
  print('${chapter?.data?.length ?? 0} verses found');

  final defaultBibles = await client.bible.getDefaultBibles();
  print('${defaultBibles?.length ?? 0} default bibles found');

  final mediaTypes = await client.bible.getMediaTypes();
  print('${mediaTypes?.length ?? 0} media types found');

  // Country endpoints
  final countries = await client.country.getCountries();
  print('${countries.length} countries found');

  final country = await client.country.getCountry('PH');
  print('${country?.data?.name} country found');

  // Language endpoints
  final languages = await client.language.getLanguages();
  print('${languages.length} languages found');

  final language = await client.language.getLanguage(6513);
  print('${language?.data?.name} language found');

  // Number endpoints
  final numbers = await client.number.getNumbers();
  print('${numbers?.data?.length ?? 0} numbers found');

  final number = await client.number.getNumber('thai');
  print('${number?.data?.id} number found');

  // Search endpoints
  final searches = await client.search.search('love', 'ENGKJV');
  print('${searches.length} searches found');

  // Timestamp endpoints
  final filesets = await client.timestamp.getFilesetsWithTimestamps();
  print('${filesets.length} filesets found');

  final timestamps =
      await client.timestamp.getTimestamps('ENGKJVO1DA', 'GEN', 1);
  print('${timestamps?.data?.length ?? 0} timestamps found');
}
