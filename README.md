# EPSUIFactory

`EPSUIFactory` is a class which provides factory methods for common configurations of UIKit controls. Some examples are:

- `UILabel`
- `UITextField` set up for email entry
- `UITextField` set up for password entry
- `UIView` set up to be used as the container view in a `UIScrollView` which should only scroll vertically

All views returned by `EPSUIFactory` are ready to be used with auto layout (ie. they have `translatesAutoresizingMaskIntoConstraints` set to `NO`.)

## Usage

### Factory Methods

```objective-c
- (void)viewDidLoad {
  [super viewDidLoad];

  UITextField *passwordField = [EPSUIFactory passwordTextField];
  [self.view addSubview:passwordField];
  // Add some constraints on `passwordField`
  ...
}
```

For complete documentation of the methods available, see [EPSUIFactory.h](https://github.com/ElectricPeelSoftware/EPSUIFactory/blob/master/Classes/EPSUIFactory.h).

### UIView+EPSAutoLayout

There is an included category on `UIView` which makes setup for views not included in the factory methods easier. Use `eps_initForAutolayout` instead of `initWithFrame:` when you are creating a view for use with auto layout. For example:

```objective-c
UIView *view = [[UIView alloc] eps_initForAutoLayout];
```

is equivalent to

```objective-c
UIView *view = [[UIView alloc] initWithFrame:CGRectZero];
view.translatesAutoresizingMaskIntoConstraints = NO;
```

### Example Project

To run the example project; clone the repo, and run `pod install` from the “Project” directory first.

## Installation

EPSUIFactory is available through [CocoaPods](http://cocoapods.org), to install it simply add the following line to your Podfile:

```ruby
pod "EPSUIFactory"
```

Alternatively, add all files from the “Classes” folder to your project.

## License

EPSUIFactory is available under the MIT license. See the LICENSE file for more info.
