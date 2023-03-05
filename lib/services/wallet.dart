import 'package:url_launcher/url_launcher_string.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';
import 'package:get/get.dart';

class Wallet extends GetxController {
  var _session;

  final WalletConnect _connector = WalletConnect(
    bridge: 'https://bridge.walletconnect.org',
    clientMeta: const PeerMeta(
      name: "GNR8",
      description: "Regenerative Finance Done Right",
      url: "https://gnr8.xyz",
      icons: [
        "https://firebasestorage.googleapis.com/v0/b/gnr8dapp.appspot.com/o/logoSquarWhite.png?alt=media&token=8cd865fb-c983-4fcb-a1f3-181a1f84ca91"
      ],
    ),
  );

  Future<dynamic> loginViaMM() async {
    if (!_connector.connected) {
      try {
        _session = await _connector.createSession(onDisplayUri: (uri) async {
          await launchUrlString(uri, mode: LaunchMode.externalApplication);
        });
        String address = _session.accounts[0];
        print(address);
      } catch (e) {
        rethrow;
      }
    }
  }

  void init() {
    _connector.on("connect", (session) {
      _session = session;
      update();
    });
    _connector.on("session_update", (session) {
      _session = session;
      update();
    });
    _connector.on("disconnect", (session) {
      _session = null;
      update();
    });
  }

  @override
  void onInit() {
    init();
    super.onInit();
  }
}
