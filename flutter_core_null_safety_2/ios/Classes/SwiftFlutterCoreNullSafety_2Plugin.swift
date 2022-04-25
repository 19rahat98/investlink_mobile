import Flutter
import UIKit

public class SwiftFlutterCoreNullSafety_2Plugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_core_null_safety_2", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterCoreNullSafety_2Plugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
