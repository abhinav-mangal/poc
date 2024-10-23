// lib/connectivity_api.dart
import 'package:pigeon/pigeon.dart';

class ConnectivityResult {
  bool? isConnected;
}

@HostApi()
abstract class ConnectivityApi {
  ConnectivityResult checkConnectivity();
}
