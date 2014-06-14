library dnd_example;

import 'dart:html';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';
import 'package:dnd/drag_detector.dart';

final _log = new Logger('dnd_example');

main() {
  initLogging();
  
  DragDetector dragDetector = new DragDetector.forElement(querySelector('#image'));
}

initLogging() {
  DateFormat dateFormat = new DateFormat('yyyy.mm.dd HH:mm:ss.SSS');
  
  // Print output to console.
  Logger.root.onRecord.listen((LogRecord r) {
    print('${dateFormat.format(r.time)}\t${r.loggerName}\t[${r.level.name}]:\t${r.message}');
  });
  
  // Root logger level.
  Logger.root.level = Level.FINEST;
}