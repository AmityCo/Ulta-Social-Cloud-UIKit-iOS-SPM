
# AmityUIKit

<p align="center" >
  <img src="https://global-uploads.webflow.com/5eddccffdb3c6a27f79757c1/604f017e59681e734c3bd995_nav-logo.png" alt="Amity" title="AmityUIKit">
</p>

[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

AmityUIKit is a delightful networking library for iOS. It is extending the powerful high-level messaging abstractions provided by [Amity](https://www.amity.co). It has a scalable architecture with well-designed, feature-rich APIs that are a joy to use.

## How To Get Started

- [Download Latest AmityUIKit SDK manually](https://docs.amity.co/uikit/ios/changelog)
- Read the ["Getting Started" Documentation](https://docs.amity.co/uikit/ios/getting-started)
- [Migration Guide](https://docs.amity.co/announcements/migration-guide)

### Installation

There are multiple ways to setup AmityUIKit to be able work
Once setup below has done, go to official [Amity](https://docs.amity.co/uikit/ios/getting-started) documentation and follow another step.

### Swift Package Manager

- Install packages from `git@github.com:AmityCo/Ulta-Social-Cloud-UIKit-iOS-SPM.git` with a specific version tag for example 2.0.0-beta01 and integrate into app target.
- It will install AmitySDK, Realm, RealmSwift, AmityUIKit and AmityUIKit4 packages.

## Communication

- If you **need help**, contact [Amity representatives](https://www.amity.co).
- If you'd like to **ask a general question**, use the provided Eko Application / some chat channel for communication between client and us.
- If you **found a bug**, _and can provide steps to reliably reproduce it_, open an issue and put the related release tag with a label.
- If you **have a feature request**, open an issue.

## Requirements

| AmityUIKit Version | Minimum iOS Target  | Swift Version | Xcode Version |
| 2.0.0 | iOS 12.0 | Swift 5 | Xcode 12.2 |

## Dependencies

AmityUIKit has dependencies with Realm. Currently we are only able to work with Realm version 4.x.x.

## Sample App

AmityUIKit has sample app you can play along with it. It is written with Swift.
To run sample app please select the scheme `SampleApp`.

## License

Public Framework. Copyright (c) 2020 [Amity](https://www.amity.co).

## Custom Ulta Configuration

``` swift
// In Application class
let ultaConfig = UltaUIKitConfig(newsCommunityId: "newsCommunityId",
                faqCommunityId: "faqCommunityId",
                defaultTab: "explore",
                temrsandConditionsUrl: "https://www.ulta.com/company/terms-and-conditions",
                privacyAndPolicyUrl: "https://www.ulta.com/company/privacy"
)

AmityUIKit4Manager.setup(apiKey: API_KEY, region: .US, ultaConfig: ultaConfig)

// Custom behavior
let loginBehavior = CustomLoginBehavior()
AmityUIKit4Manager.behaviour.loginBehavior = loginBehavior

let topNavagationBehavior = CustomTopNavigationBehavior()
AmityUIKit4Manager.behaviour.topNavigationBehavior = topNavagationBehavior

class CustomLoginBehavior: AmityLoginBehavior {
    
    override func goToLoginView(controller: ViewController?) {
        
        let navigationController = controller?.navigationController
        let loginView = LoginView()
        
        let vc = AmitySwiftUIHostingController(rootView: AnyView(loginView))
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

class CustomTopNavigationBehavior: AmityTopNavigationBehavior {
// This will appear at right of navigation controller
    override func bagView(controller: ViewController?) -> any View {
        return HStack(spacing: 16) {
            
            Button(action: {
                let navigationController = controller?.navigationController
                let bagView = BagView()
                
                let vc = AmitySwiftUIHostingController(rootView: AnyView(cartView))
                navigationController?.pushViewController(vc, animated: true)

            }) {
                Image("bagIcon", bundle: Bundle.main)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            }
        }
    }
    

}
```

## Navigate to SocialHomePage
``` swift
let pageView = AmitySocialHomePage(backAction: { [weak self] in
    self?.navigationController?.popViewController()
})
let hostingController = AmitySwiftUIHostingController(rootView: pageView)
navigationController?.pushViewController(hostingController, animated: true)
```
