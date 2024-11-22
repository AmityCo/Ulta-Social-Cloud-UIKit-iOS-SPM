
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

let customHyperlinkBehavior = CustomHyperlinkBehavior()
AmityUIKit4Manager.behaviour.hyperlinkBehavior = customHyperlinkBehavior

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

class CustomHyperlinkBehavior: AmityHyperLinkBehavior {
    // Override when user tap on link
    // The default action is open link on external
    override func handleLinkNavigation(controller: ViewController?, url: URL) {
        
        let navigationController = controller?.navigationController
        let linkView = HyperlinkView(text: url.absoluteString)
        
        let vc = AmitySwiftUIHostingController(rootView: AnyView(linkView))
        navigationController?.pushViewController(vc, animated: true)
    }
}
```

## Navigate to Amity UIKit
``` swift
func navigateToSocialHomePage() {
    let pageView = AmitySocialHomePage(backAction: { [weak self] in
        self?.navigationController?.popViewController()
    })
    let hostingController = AmitySwiftUIHostingController(rootView: pageView)
    navigationController?.pushViewController(hostingController, animated: true)
}

func navigateToPostDetailPage() {
    let page = AmityPostDetailPage(id: "post-id")
    let hostingController = AmitySwiftUIHostingController(rootView: page)
    navigationController?.pushViewController(hostingController, animated: true)
}

func navigateToCommunityProfilePage() {
    let page = AmityCommunityProfilePage(communityId: "community-id")
    let hostingController = AmitySwiftUIHostingController(rootView: page)
    navigationController?.pushViewController(hostingController, animated: true)
}

func navigateToUserProfilePage() {
    let page = AmityUserProfilePage(userId: "user-id")
    let hostingController = AmitySwiftUIHostingController(rootView: page)
    navigationController?.pushViewController(hostingController, animated: true)
}
```


## Sample usage with TabBarController
``` swift
import UIKit
import AmityUIKit4

class UltaTabViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
        
        setupTabBar()
        
        self.delegate = self
        self.selectedIndex = 0
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.tabBar.layer.shadowPath = UIBezierPath(rect: self.tabBar.bounds).cgPath
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @objc func setupTabBar() {
        
        self.tabBar.isTranslucent = false
        
        self.tabBar.backgroundImage = UIImage()
        self.tabBar.shadowImage = UIImage()
        
        self.tabBar.tintColor = .black
        self.tabBar.barTintColor = .white
        self.tabBar.backgroundColor = .white
        
        let appearance = tabBar.standardAppearance
        appearance.shadowImage = nil
        appearance.shadowColor = nil
        appearance.backgroundEffect = nil
        tabBar.standardAppearance = appearance
        
        dropShadow()
    }
    
    private func setupViewControllers() {
        let symbolConfiguration = UIImage.SymbolConfiguration(font: .systemFont(ofSize: 18, weight: .medium), scale: .unspecified)
        
        // First Tab
        let firstvc = UINavigationController(rootViewController: FirstViewController())
        let homeImage = UIImage(systemName: "pentagon")?.imageWithoutBaseline().applyingSymbolConfiguration(symbolConfiguration)?.withRenderingMode(.alwaysTemplate)
        firstvc.tabBarItem = UITabBarItem(title: "", image: homeImage, tag: 0)
        
        // Second Tab. From here we navigate to social home page.
        let secondVc = UINavigationController(rootViewController: SecondViewController())
        let routineImage = UIImage(systemName: "square.grid.2x2", withConfiguration: symbolConfiguration)?.imageWithoutBaseline().withRenderingMode(.alwaysTemplate)
        secondVc.tabBarItem = UITabBarItem(title: "", image: routineImage, tag: 1)
        
        self.viewControllers = [firstvc, secondVc]
    }
    
    private func dropShadow() {
        self.tabBar.layer.masksToBounds = false
        self.tabBar.layer.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        self.tabBar.layer.shadowOpacity = 0.2
        self.tabBar.layer.shadowOffset = CGSize(width: 0, height: -1)
        self.tabBar.layer.shadowRadius = 5
        
        self.tabBar.layer.rasterizationScale = UIScreen.main.scale
    }
}

class FirstViewController: UIViewController {
    
    let label = UILabel()
    
    override func loadView() {
        self.view = UIView()
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.text = "Awesome First Tab"
        label.textColor = .black
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(onDismissButtonTap))
        
        self.title = "First Tab"
    }
    
    @objc func onDismissButtonTap() {
        self.dismiss(animated: true)
    }
}

class SecondViewController: UIViewController {
    
    let button = UIButton(type: .system)
    
    override func loadView() {
        self.view = UIView()
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.setTitle("Open Ulta Social UIKit", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(onButtonTap), for: .touchUpInside)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(onDismissButtonTap))
        
        self.title = "Second Tab"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // SocialUIKit manages its own navigation bar. It is automatically hidden in SocialHomePage. So we enable default navigation bar
        // when this viewcontroller appears again.
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @objc func onButtonTap() {
        // Push social home page
        let socialHomePage = AmitySwiftUIHostingController(rootView: AmitySocialHomePage(backAction: {
            self.navigationController?.popViewController()
        }))
        self.navigationController?.pushViewController(socialHomePage)
    }
    
    @objc func onDismissButtonTap() {
        self.dismiss(animated: true)
    }
}
```
