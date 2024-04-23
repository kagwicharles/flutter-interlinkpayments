
import 'flutterinterlinkpayments_platform_interface.dart';

class Flutterinterlinkpayments {
  Future<String?> getPlatformVersion() {
    return FlutterinterlinkpaymentsPlatform.instance.getPlatformVersion();
  }
}
