//
//  View1ViewController.swift
//  FloatingTabBar
//

import UIKit

class View1ViewController: UIViewController {

    private var searchBar: UISearchBar!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "View 1"
        title = "View 1"
        addBackToHomeButton()
        splitViewController?.showDefaultDetailsViewController()
        navigationItem.rightBarButtonItem = rightSearchButton

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    private lazy var rightSearchButton: UIBarButtonItem = {
        return UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(searchButtonAction(_:)))
    }()

    @objc func searchButtonAction(_ sender: Any?) {
    }
}
