# LxTabBadgePoint-swift
    Easily custom viewController's tabBar badge view. 

### Installation
    You only need drag UIViewController+LxTabBadgePoint.h and UIViewController+LxTabBadgePoint.m to your project.

### Support
    Minimum support iOS version: iOS 6.0

### Usage

```swift
//  Judge whether embed in tabbarController
    let isEmbedInTabBarController : Bool = viewController.isEmbedInTabBarController

//  If yes, you can set showTabBadgePoint to show/hide tabBar badge view.
    viewController.showTabBadgePoint = true/false

//  Red point is default effect, you can change it to any you want view.
    viewController.tabBadgePointView = ...(You customed UIView object)

//  You can adjust the tabBar badge view's position.
    viewController.tabBadgePointViewOffset = UIOffset(horizontal: 3, vertical: 6)
```

### License
    LxTabBadgePoint is available under the MIT License. See the LICENSE file for more info.
