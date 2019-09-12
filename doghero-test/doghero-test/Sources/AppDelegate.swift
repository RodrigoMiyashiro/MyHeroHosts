//
//  AppDelegate.swift
//  doghero-test
//
//  Created by Gustavo Romito Nogueira on 1/27/18.
//  Copyright © 2018 doghero. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var navigator: Navigator?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.initialDestination()

        return true
    }

    private func initialDestination() {
        let destinationView = MyHeroesSummaryTypeDestination()

        self.navigator = DefaultNavigator(self.window!)
        self.navigator?.navigate(to: destinationView,
                                 mode: .fromRoot)
    }
}
