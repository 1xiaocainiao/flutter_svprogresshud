import Flutter
import UIKit
import SVProgressHUD

public class SwiftFlutterSvprogresshudPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "flutter_svprogresshud", binaryMessenger: registrar.messenger())
        let instance = SwiftFlutterSvprogresshudPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "show":
            show(call, result)
        case "dismiss":
            dismiss(call, result)
        default:
            result(FlutterMethodNotImplemented);
        }
        
    }
    
    func show(_ call: FlutterMethodCall, _ result: @escaping FlutterResult) {
        guard let arguments = call.arguments as? [String: Any] else {
            return
        }
        if let status = arguments["status"] as? String, !status.isEmpty {
            SVProgressHUD.show(withStatus: status)
        } else {
            SVProgressHUD.show()
        }
    }
    
    func dismiss(_ call: FlutterMethodCall, _ result: @escaping FlutterResult) {
        guard let arguments = call.arguments as? [String: Any] else {
            result(nil)
            return
        }
        
        if let delay = arguments["delay"] as? Double {
            let completion = {
                result(nil)
            }
            SVProgressHUD.dismiss(withDelay: delay)
            SVProgressHUD.dismiss(withDelay: delay, completion: completion)
        } else {
            SVProgressHUD.dismiss()
        }
    }
}
