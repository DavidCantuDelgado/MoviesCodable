//
//  PosterViewController.swift
//  MoviesCodable-Base
//
//  Created by David A Cantú Delgado on 11/4/18.
//  Copyright © 2018 Bugsracer. All rights reserved.
//

import UIKit

class PosterViewController: UIViewController {
    
    @IBOutlet weak var imPoster: UIImageView!
    var poster: UIImage?
    var posterName: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        title = posterName
        imPoster.image = poster
    }
    
    @IBAction func pinchImage(_ sender: UIPinchGestureRecognizer) {
        imPoster?.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
