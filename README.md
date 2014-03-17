# EPSUIFactory

`EPSUIFactory` is a class which provides factory methods for common configurations of UIKit controls. Some examples are:

- `UILabel`
- `UITextField` set up for email entry
- `UITextField` set up for password entry
- `UIView` set up to be used as the container view in a `UIScrollView` which should only scroll vertically

All views returned by `EPSUIFactory` are ready to be used with auto layout (ie. they have `translatesAutoresizingMaskIntoConstraints` set to `NO`.)

## Usage

```objective-c
- (void)viewDidLoad {
  [super viewDidLoad];

  UITextField *passwordField = [EPSUIFactory passwordTextField];
  [self.view addSubview:passwordField];
  // Add some constraints on `passwordField`
  ...
}
```

For complete documentation of the methods available, see [EPSUIFactory.h](https://github.com/ElectricPeelSoftware/EPSFactoryUI/blob/master/Classes/EPSFactoryUI.h).

To run the example project; clone the repo, and run `pod install` from the “Project” directory first.

## Installation

EPSUIFactory is available through [CocoaPods](http://cocoapods.org), to install it simply add the following line to your Podfile:

```ruby
pod "EPSUIFactory"
```

Alternatively, add all files from the “Classes” folder to your project.

## License

EPSUIFactory is available under the MIT license. See the LICENSE file for more info.
