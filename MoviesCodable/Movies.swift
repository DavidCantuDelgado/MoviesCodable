//
//  Movies.swift
//  MoviesCodable
//
//  Created by David A Cantú Delgado on 11/1/18.
//  Copyright © 2018 Bugsracer. All rights reserved.
//

import UIKit

// TODO: 1-Cambiar el objeto Movies a Codable
class Movies: NSObject {
    var movie : String = ""
    var director : String = ""
    var poster : String = ""
    var rating : String = ""
    var detail : String = ""
    var year : String = ""
    
    //TODO: 2-incluir la definición de donde obtener el archivo con los datos de "movies"
    
    init(movie: String, director: String, poster: String, rating : String, detail: String, year : String ) {
        self.movie = movie
        self.director = director
        self.poster = poster
        self.rating = rating
        self.detail = detail
        self.year = year
    }
}
