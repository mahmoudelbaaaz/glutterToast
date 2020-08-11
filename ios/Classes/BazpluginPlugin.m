#import "BazpluginPlugin.h"
#if __has_include(<bazplugin/bazplugin-Swift.h>)
#import <bazplugin/bazplugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "bazplugin-Swift.h"
#endif

@implementation BazpluginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBazpluginPlugin registerWithRegistrar:registrar];
}
@end
