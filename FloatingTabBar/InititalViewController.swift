//
//  ViewController.swift
//  FloatingTabBar
//

import UIKit

class InititalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonAction(_ sender: Any) {
        performSegue(withIdentifier: "showTabBar", sender: self)
    }
}

