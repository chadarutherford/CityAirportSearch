//
//  BaseCoordinator.swift
//  CityAirportSearch
//
//  Created by Chad Rutherford on 3/19/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

import Foundation

class BaseCoordinator: Coordinator {
	
	var childCoordinators = [Coordinator]()
	
	func start() {
		fatalError("Children should implement 'start'.")
	}
}
