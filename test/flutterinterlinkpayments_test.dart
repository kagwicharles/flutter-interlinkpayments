import 'package:flutter_test/flutter_test.dart';
import 'package:flutterinterlinkpayments/flutterinterlinkpayments.dart';
import 'package:flutterinterlinkpayments/flutterinterlinkpayments_platform_interface.dart';
import 'package:flutterinterlinkpayments/flutterinterlinkpayments_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterinterlinkpaymentsPlatform
    with MockPlatformInterfaceMixin
    implements FlutterinterlinkpaymentsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterinterlinkpaymentsPlatform initialPlatform = FlutterinterlinkpaymentsPlatform.instance;

  test('$MethodChannelFlutterinterlinkpayments is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterinterlinkpayments>());
  });

  test('getPlatformVersion', () async {
    Flutterinterlinkpayments flutterinterlinkpaymentsPlugin = Flutterinterlinkpayments();
    MockFlutterinterlinkpaymentsPlatform fakePlatform = MockFlutterinterlinkpaymentsPlatform();
    FlutterinterlinkpaymentsPlatform.instance = fakePlatform;

    expect(await flutterinterlinkpaymentsPlugin.getPlatformVersion(), '42');
  });
}
