#import "FlutterSvprogresshudPlugin.h"
#if __has_include(<flutter_svprogresshud/flutter_svprogresshud-Swift.h>)
#import <flutter_svprogresshud/flutter_svprogresshud-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_svprogresshud-Swift.h"
#endif

@implementation FlutterSvprogresshudPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterSvprogresshudPlugin registerWithRegistrar:registrar];
}
@end
