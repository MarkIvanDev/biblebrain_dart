# biblebrain_dart
A dart wrapper for the [Bible Brain (aka Digital Bible Platform v4) API](https://www.faithcomesbyhearing.com/audio-bible-resources/bible-brain).

## Getting started

**NOTE: You will need an API Key, which can be obtained by submitting a request [here](https://4.dbt.io/api_key/request).**

[Install](https://pub.dev/packages/biblebrain_dart/install) the `biblebrain_dart` package:

```yaml
dependencies:
  biblebrain_dart: ^1.0.0
```

Then you can import it in your Dart code:

```dart
import 'package:biblebrain_dart/biblebrain_dart.dart';
```

## Usage

```dart
final client = BibleBrainClient(apiKey: '<API-KEY>');

// Alphabet endpoints
final alphabets = await client.alphabet.getAlphabets();
final alphabet = await client.alphabet.getAlphabet('Latn');

// Bible endpoints
final bibles = await client.bible.getBibles();
final bible = await client.bible.getBible('ENGKJV');
final books = await client.bible.getBooks('ENGKJV');
final copyright = await client.bible.getCopyright('ENGKJV');
final chapter = await client.bible.getChapter('ENGKJV', 'GEN', 1);
final defaultBibles = await client.bible.getDefaultBibles();
final mediaTypes = await client.bible.getMediaTypes();

// Country endpoints
final countries = await client.country.getCountries();
final country = await client.country.getCountry('PH');

// Language endpoints
final languages = await client.language.getLanguages();
final language = await client.language.getLanguage(6513);

// Number endpoints
final numbers = await client.number.getNumbers();
final number = await client.number.getNumber('thai');

// Search endpoints
final searches = await client.search.search('love', 'ENGKJV');

// Timestamp endpoints
final filesets = await client.timestamp.getFilesetsWithTimestamps();
final timestamps = await client.timestamp.getTimestamps('ENGKJVO1DA', 'GEN', 1);
```

## Support
If you like my work and want to support me, buying me a coffee would be awesome! Thanks for your support!

<a href="https://www.buymeacoffee.com/markivandev" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-blue.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>

---------
**Mark Ivan Basto** &bullet; **GitHub**
**[@MarkIvanDev](https://github.com/MarkIvanDev)** &bullet; **Twitter**
**[@Rivolvan_Speaks](https://twitter.com/Rivolvan_Speaks)**