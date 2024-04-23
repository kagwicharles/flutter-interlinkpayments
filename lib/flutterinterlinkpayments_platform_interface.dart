import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutterinterlinkpayments_method_channel.dart';

abstract class FlutterinterlinkpaymentsPlatform extends PlatformInterface {
  /// Constructs a FlutterinterlinkpaymentsPlatform.
  FlutterinterlinkpaymentsPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterinterlinkpaymentsPlatform _instance = MethodChannelFlutterinterlinkpayments();

  /// The default instance of [FlutterinterlinkpaymentsPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterinterlinkpayments].
  static FlutterinterlinkpaymentsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterinterlinkpaymentsPlatform] when
  /// they register themselves.
  static set instance(FlutterinterlinkpaymentsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
