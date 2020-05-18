//
//  MovieViewController.swift
//  DemoVIPER
//
//  Created by Mayur Kamthe on 03/05/20.
//  Copyright © 2020 Mayur Kamthe. All rights reserved.

import UIKit

protocol dispalyDataOnView{
    func displayData(movieList : [Movie])
}

class MovieViewController: UIViewController, dispalyDataOnView{
  
    @IBOutlet weak var tableview: UITableView!
   
    var movieDatasource : MovieDataSource = MovieDataSource()
    var router : MovieRouter?
    var presenter : MoviePresenter?
    var interacterViewObj : getDataProtocol?
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = movieDatasource
        //setUp()
        interacterViewObj?.getMovieDataIntrator()
        print("in viewdidload")
    }

    func setUp(){
        let viewcontroller = self
        let interacter = MovieInteractor()
        let presenter = MoviePresenter()
        //let router = MovieRouter()
        
        viewcontroller.interacterViewObj = interacter
        interacter.presenterProtocol = presenter
        presenter.viewObject = viewcontroller
        //router.viewObj = viewcontroller
    }
    
    func displayData(movieList: [Movie]) {
        print(movieList)
        movieDatasource.movieData = movieList
        DispatchQueue.main.async {
            self.tableview.reloadData()
        }
    }
}
