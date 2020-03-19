//
//  Coordinator.swift
//  CityAirportSearch
//
//  Created by Chad Rutherford on 3/19/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

import Foundation

protocol Coordinator: AnyObject {
	var childCoordinators: [Coordinator] { get set }
	
	func start()
}

extension Coordinator {
	func add(_ coordinator: Coordinator) {
		childCoordinators.append(coordinator)
	}
	
	func remove(_ coordinator: Coordinator) {
		childCoordinators = childCoordinators.filter { $0 !== coordinator }
	}
}
