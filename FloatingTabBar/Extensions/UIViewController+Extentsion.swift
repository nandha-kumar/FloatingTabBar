//
//  UIViewController+Extentsion.swift
//  FloatingTabBar
//

import UIKit

extension UIViewController {

    var backButton: UIBarButtonItem {

        if let button = navigationItem.leftBarButtonItem {
            return button
        }

        let backButton = UIButton(type: .system)
        backButton.configuration = UIButton.Configuration.plain()
        backButton.frame = CGRect(x: 0, y: 0, width: 75, height: 44)
        backButton.addTarget(self, action: #selector(backToHomeAction(sender:)), for: .touchUpInside)

        backButton.setImage(#imageLiteral(resourceName: "Back_Chevron"), for: .normal)
        backButton.setTitle("Back", for: .normal)
        backButton.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 8)
        backButton.configuration?.imagePadding = 5

        let backBarButton = UIBarButtonItem(customView: backButton)

        return backBarButton
    }

    func addBackToHomeButton() {
        navigationItem.leftBarButtonItem = backButton
    }


    @objc func backToHomeAction(sender: UIBarButtonItem) {
        parentNavigationController?.popViewController(animated: true)
    }

    var parentNavigationController: UINavigationController? {
        return tabBarController?.navigationController
    }
}
