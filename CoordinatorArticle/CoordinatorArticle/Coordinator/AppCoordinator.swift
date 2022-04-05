//
//  AppCoordinator.swift
//  CoordinatorArticle
//
//  Created by Andrej Jasso on 05/04/2022.
//

import UIKit
import Combine

// MARK: - Navigation & Initializers

enum AppStep {

    case showFirstViewController
    case showSecondViewController
    case showAboutAppCoordinator

}

final class AppCoordinator: Coordinator<AppStep> {

    // MARK: - Properties

    private let appWindow: UIWindow

    // MARK: - Init

    override init() {
        appWindow = UIWindow()
        appWindow.frame = UIScreen.main.bounds
    }

    // MARK: - Overrides

    @discardableResult
    override func start() -> UIViewController? {
        super.start()

        let navigationController = UINavigationController()
        self.navigationController = navigationController
        appWindow.rootViewController = navigationController
        appWindow.makeKeyAndVisible()

        return navigationController
    }

    override func navigate(to step: AppStep) -> StepAction {
        switch step {
        case .showFirstViewController:
            let firstViewController = UIViewController()
            firstViewController.view.backgroundColor = .blue

            return .push(firstViewController)

        case .showSecondViewController:
            let secondViewController = UIViewController()
            secondViewController.view.backgroundColor = .red

            let button = UIButton(
                frame: CGRect(origin: secondViewController.view.center, size: CGSize(width: 100, height: 100))
            )
            button.setTitle("PRESS ME", for: .normal)
            button.backgroundColor = .lightGray
            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            secondViewController.view.addSubview(button)

            return .push(secondViewController)

        case .showAboutAppCoordinator:
            if let aboutAppNavigation = AboutAppCoordinator().start() {
                return .present(aboutAppNavigation, .automatic)
            }
            return .none
        }

    }

    @objc func buttonAction() {
        step = .showAboutAppCoordinator
    }

}
