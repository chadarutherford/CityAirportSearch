//
//  SearchCityViewController.swift
//  CityAirportSearch
//
//  Created by Chad Rutherford on 3/18/20.
//  Copyright © 2020 Chad Rutherford. All rights reserved.
//

import RxDataSources
import RxSwift
import UIKit

class SearchCityViewController: UIViewController {
	
	@IBOutlet weak var roundedView: UIView!
	@IBOutlet weak var searchTextField: UIView!
	@IBOutlet weak var tableView: UITableView!
	
	var viewModel: SearchCityViewPresentable!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
}
