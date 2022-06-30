import 'package:logger/logger.dart';

final logger = Logger(
    printer: PrettyPrinter(
      methodCount: 1,
      lineLength: 50,
      errorMethodCount: 3,
      colors: true,
      printEmojis: true
    ),
  );
