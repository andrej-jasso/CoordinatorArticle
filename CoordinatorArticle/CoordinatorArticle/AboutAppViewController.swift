//
//  AboutAppCoordinator.swift
//  CoordinatorArticle
//
//  Created by Andrej Jasso on 27/09/2021.
//

import UIKit

// MARK: - Steps

final class AboutAppCoordinator: Coordinator<AppStep> {

    // MARK: - Overrides

    override func navigate(to step: AppStep) -> StepAction {
        switch step {
        default:
            return .none
        }
    }

    @discardableResult
    override func start() -> UIViewController? {
        super.start()

        let controller = UIViewController()
        let navigationController = UINavigationController()
        navigationController.viewControllers = [controller]
        controller.view.backgroundColor = .green

        return navigationController
    }

}
