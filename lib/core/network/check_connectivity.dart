import 'package:connectivity_plus/connectivity_plus.dart';

abstract interface class CheckConnectivity {
  Future<bool> get isConnected;
}

class CheckConnectivityImp implements CheckConnectivity {

  final Connectivity connectivity;

  CheckConnectivityImp(this.connectivity);

  @override
  Future<bool> get isConnected async {
    final result = await connectivity.checkConnectivity();
    for (var item in result) {
      switch (item) {
        case ConnectivityResult.mobile:
        case ConnectivityResult.vpn:
        case ConnectivityResult.wifi:
        case ConnectivityResult.ethernet:
          return true;
        default:
          return false;
      }
    }
    return false;
  }

}