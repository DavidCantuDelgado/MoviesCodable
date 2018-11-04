//
//  MoviesTableViewController.swift
//  MoviesCodable
//
//  Created by David A Cantú Delgado on 11/1/18.
//  Copyright © 2018 Bugsracer. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {
    @IBOutlet weak var lbMovie: UILabel!
    @IBOutlet weak var lbDirector: UILabel!
    @IBOutlet weak var imPoster: UIImageView!
    
    
    
}

class MoviesTableViewController: UITableViewController {
    
    var MoviesList = [Movies]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var movie = Movies(movie: "Cinema Paradiso", director: "Giuseppe Tornatore", poster: "http://bugsracer.com/Swift/images/cinemaparadiso.png", rating: "IMDB 8.5", detail: "Película Favorita", year: "1988")
        MoviesList.append(movie)
        movie = Movies(movie: "The Lord Of The Rings", director: "Peter Jackson", poster: "http://bugsracer.com/Swift/images/thelordoftherings.png", rating: "IMDB 8.8", detail: "Película de Acción favorita", year: "2001")
        MoviesList.append(movie)

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MoviesList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moviecell", for: indexPath) as! MoviesTableViewCell

        cell.lbMovie.text = MoviesList[indexPath.row].movie
        cell.lbDirector?.text = MoviesList[indexPath.row].director
        let sUrl = MoviesList[indexPath.row].poster
        let url = URL(string: sUrl)
        do {
            let imgData = try Data(contentsOf: url!)
            cell.imPoster?.image = UIImage(data: imgData as Data)
        } catch {
            print("image not found")
        }
        return cell
    }
    
    
    // Override row size
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaEditar = segue.destination as! ViewController
        let indexPath = tableView.indexPathForSelectedRow
        vistaEditar.movie = MoviesList[indexPath!.row]
    }
}
