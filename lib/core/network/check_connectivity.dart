import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract interface class CheckConnectivity {
  Future<bool> get isConnected;
}

class CheckConnectivityImp implements CheckConnectivity {

  final Connectivity connectivity;

  CheckConnectivityImp(this.connectivity);

  @override
  Future<bool> get isConnected async {
    final result = await connectivity.checkConnectivity();
    for (final item in result) {
      return switch (item) {
        ConnectivityResult.wifi || ConnectivityResult.mobile || ConnectivityResult.vpn || ConnectivityResult.ethernet || ConnectivityResult.other => true,
        ConnectivityResult.none || ConnectivityResult.bluetooth => false
      };
    }
    return false;
  }
}

final connectivityProvider = Provider<CheckConnectivityImp>((_) {
  return CheckConnectivityImp(Connectivity());
});