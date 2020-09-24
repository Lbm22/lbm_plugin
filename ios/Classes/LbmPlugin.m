#import "LbmPlugin.h"
#if __has_include(<lbm_plugin/lbm_plugin-Swift.h>)
#import <lbm_plugin/lbm_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "lbm_plugin-Swift.h"
#endif

@implementation LbmPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLbmPlugin registerWithRegistrar:registrar];
}
@end
