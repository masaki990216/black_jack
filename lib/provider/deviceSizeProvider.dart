import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// MediaQueryを利用すると、keyboard表示時にrebuildが走るので、以下を利用する。
final deviceSizeProvider = Provider<Size>((ref) {
  return WidgetsBinding.instance!.window.physicalSize /
      WidgetsBinding.instance!.window.devicePixelRatio;
});
