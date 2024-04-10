import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'dart:developer' as developer;

// final logger = Logger();

final logger = Logger(
  output: ConsoleOutput(),
  printer: PrettyPrinter(
    // 表示されるコールスタックの数
    methodCount: 1,
    // 表示されるスタックトレースのコールスタックの数
    errorMethodCount: 5,
    // 出力するログ1行の幅
    lineLength: 120,
    // メッセージに色をつけるかどうか
    colors: true,
    // 絵文字を出力するかどうか
    printEmojis: true,
    // タイムスタンプを出力するかどうか
    printTime: true,
  ),
);

class ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    if (kReleaseMode || !Platform.isIOS) {
      event.lines.forEach(debugPrint);
    } else {
      event.lines.forEach(developer.log);
    }
  }
}
