//
//  Movies.swift
//  MoviesCodable
//
//  Created by David A Cantú Delgado on 11/1/18.
//  Copyright © 2018 Bugsracer. All rights reserved.
//

import UIKit

class Movies: NSObject {
    var movie : String = ""
    var director : String = ""
    var poster : String = ""
    var rating : String = ""
    var detail : String = ""
    var year : String = ""
    
    init(movie: String, director: String, poster: String, rating : String, detail: String, year : String ) {
        self.movie = movie
        self.director = director
        self.poster = poster
        self.rating = rating
        self.detail = detail
        self.year = year
    }
}
