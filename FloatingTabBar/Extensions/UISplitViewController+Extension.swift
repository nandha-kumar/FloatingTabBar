//
//  UISplitViewController+Extension.swift
//  FloatingTabBar
//

import UIKit

extension UISplitViewController {

    func showDefaultDetailsViewController() {

        let detailsNavController = UIStoryboard(name: "Main",
                                                bundle: nil).instantiateViewController(withIdentifier: "DefaultDetailsNavController") as! UINavigationController

        showDetailViewController(detailsNavController, sender: nil)
    }
}
