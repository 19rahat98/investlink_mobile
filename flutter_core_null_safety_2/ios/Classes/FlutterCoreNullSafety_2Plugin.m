#import "FlutterCoreNullSafety_2Plugin.h"
#if __has_include(<flutter_core_null_safety_2/flutter_core_null_safety_2-Swift.h>)
#import <flutter_core_null_safety_2/flutter_core_null_safety_2-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_core_null_safety_2-Swift.h"
#endif

@implementation FlutterCoreNullSafety_2Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterCoreNullSafety_2Plugin registerWithRegistrar:registrar];
}
@end
