//
//  SearchCityCoordinator.swift
//  CityAirportSearch
//
//  Created by Chad Rutherford on 3/19/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

import UIKit

class SearchCityCoordinator: BaseCoordinator {
	
	private let navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	override func start() {
		let view = SearchCityViewController.instantiate()
		view.viewModelBuilder = {
			SearchCityViewModel(input: $0)
		}
		navigationController.pushViewController(view, animated: true)
	}
}
