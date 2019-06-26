//
//  ViewController.swift
//  Anchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-06-24.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class AnchorsViewController: UIViewController {

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

        upperLeftLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true

        upperRightLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true            // don't use `leftAnchor`
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true   // negative sign

        lowerLeftLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        lowerLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true

        lowerRightLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        lowerRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true

        // labels have intrinsic width and height - but can also specify via anchors
        lowerRightLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        lowerRightLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    func setupNavigationItems() {
        navigationItem.title = "Anchors"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "SafeAreas", style: .plain, target: self, action: #selector(handleSafeAreas))
    }

    // MARK: - Actions
    @objc func handleSafeAreas() {
        navigationController?.pushViewController(SafeAreaViewController(), animated: false)
    }

}
