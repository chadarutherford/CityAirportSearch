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

class SearchCityViewController: UIViewController, Storyboarded {
	
	@IBOutlet weak var roundedView: UIView!
	@IBOutlet weak var searchTextField: UITextField!
	@IBOutlet weak var tableView: UITableView!
	
	private var viewModel: SearchCityViewPresentable!
	var viewModelBuilder: SearchCityViewPresentable.ViewModelBuilder!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		viewModel = viewModelBuilder((
			searchText: searchTextField.rx.text.orEmpty.asDriver(), ()
		))
		self.title = "Airports"
	}
}
