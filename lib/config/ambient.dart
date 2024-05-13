import 'package:flutter_dotenv/flutter_dotenv.dart';

class Ambient {
  static String DbKey = dotenv.env['APP_NAME'] ?? 'Hello World!';
}
