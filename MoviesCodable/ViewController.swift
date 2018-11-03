//
//  ViewController.swift
//  MoviesCodable
//
//  Created by David A Cantú Delgado on 11/1/18.
//  Copyright © 2018 Bugsracer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfMovie: UITextField!
    @IBOutlet weak var tfDirector: UITextField!
    @IBOutlet weak var tfPoster: UITextField!
    @IBOutlet weak var tfDetail: UITextField!
    @IBOutlet weak var tfRating: UITextField!
    @IBOutlet weak var tfYear: UITextField!
    @IBOutlet weak var imPoster: UIImageView!
    var movie:Movies?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfMovie.text = movie!.movie
        tfDirector.text = movie!.director
        tfDetail.text = movie!.detail
        tfPoster.text = movie!.poster
        tfRating.text = movie!.rating
        tfYear.text = movie!.year
        let sUrl = movie!.poster
        let url = URL(string: sUrl)
        let imgData = NSData(contentsOf: url!)
        imPoster.image = UIImage(data: imgData! as Data)

        
    }

   
    
}

