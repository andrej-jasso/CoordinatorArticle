//
//  AppDelegate.swift
//  CoordinatorArticle
//
//  Created by Andrej Jasso on 27/09/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    private var appCoordinator: AppCoordinator!

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let appCoordinator = AppCoordinator()
        self.appCoordinator = appCoordinator
        appCoordinator.start()
        appCoordinator.step = .showFirstViewController
        appCoordinator.step = .showSecondViewController

        return true
    }

}

