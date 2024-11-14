
# Soicial+ UIKit

<p align="center" >
  <img src="https://global-uploads.webflow.com/5eddccffdb3c6a27f79757c1/604f017e59681e734c3bd995_nav-logo.png" alt="Amity" title="AmityUIKit">
</p>


Soicial+ UIKit is a delightful networking library for iOS. It is extending the powerful high-level messaging abstractions provided by [Amity](https://www.social.plus). It has a scalable architecture with well-designed, feature-rich APIs that are a joy to use.


### Installation
### Swift Package Manager

- Install packages from `git@github.com:AmityCo/Ulta-Social-Cloud-UIKit-iOS-SPM.git` with a specific version tag for example 2.0.0-beta01 and integrate into app target.
- It will install Social+ SDK, Realm, RealmSwift, Social+ UIKit packages.

## Requirements

| AmityUIKit Version | Minimum iOS Target  | Swift Version | Xcode Version |
| 2.0.0 | iOS 13.0 | Swift 5 | Xcode 12.2 |


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
