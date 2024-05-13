import 'package:flutter_dotenv/flutter_dotenv.dart';

class Ambient {
  static String DbKey = dotenv.env['THE_MOVIEDB_API_KEY'] ?? 'Hello World!';
}
