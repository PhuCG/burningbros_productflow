import 'dart:async';
import 'dart:ui';

class Debouncer {
  final Duration delay;
  Timer? _timer;

  Debouncer({this.delay = const Duration(milliseconds: 500)});

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(delay, action);
  }

  void dispose() {
    _timer?.cancel();
    _timer = null;
  }
}

/// A shortcut to debounce a function call.
void debounce({
  Duration duration = const Duration(milliseconds: 500),
  required VoidCallback action,
}) {
  return Debouncer(delay: duration).run(action);
}
