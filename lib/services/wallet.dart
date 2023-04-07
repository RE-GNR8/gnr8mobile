import 'package:url_launcher/url_launcher_string.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';
import 'package:get/get.dart';
import 'package:web3dart/web3dart.dart';

class Wallet extends GetxController {
  //* Variables
  var _session;

  final String baseURI =
      "https://nftstorage.link/ipfs/bafybeianyt6td7xbqmr3ox6t7veibjpfdqznd3njsmgfm24potl3te4dsq/";

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

  int operatingChain = 80001;

  //* Methods

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

  Future<dynamic> mintMembership() async {
/*     credential.getAccount();
    print(credential.address); */
    /* final contract = DeployedContract(
        ContractAbi.fromJson(esContract.contractAbi, "mint"),
        esContract.deployedAddress);
    final mintFunction = contract.function("mint");
    var message = await client.sendTransaction(
        credential,
        Transaction.callContract(
            contract: contract, function: mintFunction, parameters: [0, 1]));
    return message; */
  }

  Future<dynamic> registerData() async {
    /* credential.getAccount();
    print(credential.address); */
    try {
      /* final contract = DeployedContract(
          ContractAbi.fromJson(esContract.contractAbi, "createRegistry"),
          esContract.deployedAddress); */
      //final registerFunction = contract.function("createRegistry");
      /*  var message = await client.sendTransaction(
        credential,
        Transaction.callContract(
          contract: contract,
          function: registerFunction,
          parameters: [
            1,
            0,
            "0xb14a4467c1743b2919b746affe48aa422dad51bd",
            baseURI
          ],
        ),
      ); */
    } catch (e) {
      rethrow;
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

class esContract {
  static final deployedAddress =
      EthereumAddress.fromHex("0xf932C810C467e914EB2654302B48E138d58D5146");
}
