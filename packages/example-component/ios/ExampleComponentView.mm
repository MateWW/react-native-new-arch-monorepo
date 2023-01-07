#ifdef RCT_NEW_ARCH_ENABLED
#import "ExampleComponentView.h"

#import <react/renderer/components/RNExampleComponentViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNExampleComponentViewSpec/EventEmitters.h>
#import <react/renderer/components/RNExampleComponentViewSpec/Props.h>
#import <react/renderer/components/RNExampleComponentViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface ExampleComponentView () <RCTExampleComponentViewViewProtocol>

@end

@implementation ExampleComponentView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<ExampleComponentViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const ExampleComponentViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<ExampleComponentViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<ExampleComponentViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> ExampleComponentViewCls(void)
{
    return ExampleComponentView.class;
}

@end
#endif
