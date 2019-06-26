//
//  SafeAreaViewController.swift
//  Anchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-06-25.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class SafeAreaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationItems()
        setupViews()
    }

    func setupViews() {
        let upperLeftLabel = Factory.makeLabel(withText: "upperLeft")
        let upperRightLabel = Factory.makeLabel(withText: "upperRight")
        let lowerLeftLabel = Factory.makeLabel(withText: "lowerLeft")
        let lowerRightLabel = Factory.makeLabel(withText: "lowerRight")

        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(lowerLeftLabel)
        view.addSubview(lowerRightLabel)

        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true

        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true

        lowerLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        lowerLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true

        lowerRightLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        lowerRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }

    func setupNavigationItems() {
        navigationItem.title = "SafeAreas"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "LayoutGuides", style: .plain, target: self, action: #selector(handleLayoutGuide))
    }

    // MARK: - Actions
    @objc func handleLayoutGuide() {
        navigationController?.pushViewController(LayoutGuideViewController(), animated: false)
    }

}