// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef ExampleComponentViewNativeComponent_h
#define ExampleComponentViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface ExampleComponentView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* ExampleComponentViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */
