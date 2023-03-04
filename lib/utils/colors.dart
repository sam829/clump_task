import 'package:flutter/widgets.dart';

class ClumpColors {
  static final Color primaryColor = '#60A053'.toColor();
}

extension ColorExtension on String {
  toColor() {
    final buffer = StringBuffer();
    if (length == 6 || length == 7) buffer.write('ff');
    buffer.write(replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
