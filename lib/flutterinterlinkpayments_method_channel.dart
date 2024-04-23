import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutterinterlinkpayments_platform_interface.dart';

/// An implementation of [FlutterinterlinkpaymentsPlatform] that uses method channels.
class MethodChannelFlutterinterlinkpayments extends FlutterinterlinkpaymentsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutterinterlinkpayments');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
