//
//  TabBarViewController.swift
//  FloatingTabBar
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.blue
        appearance.selectionIndicatorTintColor = .white
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = tabBar.standardAppearance
        
        configureTabViewControllers()
    }

    func configureTabViewControllers() {
        let tabViewControllers = [addSplitViewController(for: view1VC,
                                                         title: "View 1",
                                                         tabBarTag: 0),
                                  addSplitViewController(for: view2VC,
                                                         title: "View 2",
                                                         tabBarTag: 1)]

        viewControllers = tabViewControllers
    }

    private func addSplitViewController(for viewController: UIViewController,
                                        title: String,
                                        tabBarTag: Int) -> UIViewController {

        let splitViewController = UISplitViewController()
        splitViewController.preferredDisplayMode = .oneBesideSecondary
        splitViewController.viewControllers = [UINavigationController(rootViewController: viewController)]

        let tabBarItem = UITabBarItem(title: title, image: nil, tag: tabBarTag)
        tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0.0,
                                                      vertical: 0.0)
        tabBarItem.setTitleTextAttributes([.foregroundColor: UIColor.white],
                                          for: .selected)
        tabBarItem.setTitleTextAttributes([.foregroundColor: UIColor.white],
                                          for: .normal)
        splitViewController.tabBarItem = tabBarItem

        return splitViewController
    }

    private lazy var view1VC: View1ViewController = {
        let vc = UIStoryboard(name: "Main",
                              bundle: nil)
            .instantiateViewController(withIdentifier: "View1ViewController") as! View1ViewController
        return vc
    }()

    private lazy var view2VC: View2ViewController = {
        let vc = UIStoryboard(name: "Main",
                              bundle: nil)
            .instantiateViewController(withIdentifier: "View2ViewController") as! View2ViewController
        return vc
    }()
}
