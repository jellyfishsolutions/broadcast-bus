library broadcast_bus;

import 'dart:async';

class BroadcastBus {
  static final _instance = BroadcastBus._internal();

  factory BroadcastBus() {
    return _instance;
  }

  BroadcastBus._internal();

  // ignore: close_sinks
  StreamController<String> _mainBus = StreamController.broadcast();

  Stream<String> getMainBus() {
    return _mainBus.stream;
  }

  void emit(String event) {
    _mainBus.add(event);
  }
}
