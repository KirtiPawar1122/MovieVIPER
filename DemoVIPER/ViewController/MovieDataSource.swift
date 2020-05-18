//
//  MovieDataSource.swift
//  DemoVIPER
//
//  Created by Mayur Kamthe on 07/05/20.
//  Copyright © 2020 Mayur Kamthe. All rights reserved.
//

import Foundation
import UIKit

class MovieDataSource: NSObject, UITableViewDataSource{
    
    var movieData = [Movie]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieData.count
        //return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as! MovieTableViewCell
        let movies = movieData[indexPath.row]
        cell.lblMovieName.text =  movies.artistName!
        return cell
    }
    
    
}
