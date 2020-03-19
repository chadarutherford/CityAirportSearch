//
//  AppCoordinator.swift
//  CityAirportSearch
//
//  Created by Chad Rutherford on 3/19/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

import UIKit

class AppCoordinator: BaseCoordinator {
	
	private let window: UIWindow
	private let navigationController: UINavigationController = {
		let navController = UINavigationController()
		navController.navigationBar.setBackgroundImage(UIImage(), for: .default)
		navController.navigationBar.shadowImage = UIImage()
		navController.navigationBar.barTintColor = UIColor(red: 233.0 / 255.0, green: 55.0 / 255.0, blue: 72.0 / 255.0, alpha: 1.0)
		navController.navigationBar.tintColor = .white
		navController.navigationBar.titleTextAttributes = [
			NSAttributedString.Key.font : UIFont(name: "Avenir-Medium", size: 28.0)!,
			NSAttributedString.Key.foregroundColor : UIColor.white
		]
		navController.navigationBar.isTranslucent = false
		return navController
	}()
	
	init(window: UIWindow) {
		self.window = window
	}
	
	override func start() {
		let searchCityCoordinator = SearchCityCoordinator(navigationController: navigationController)
		self.add(searchCityCoordinator)
		searchCityCoordinator.start()
		window.rootViewController = navigationController
		window.makeKeyAndVisible()
	}
}
