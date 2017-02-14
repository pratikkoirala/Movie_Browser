//
//  MovieDetailsViewController.swift
//  MovieBrowser
//
//  Created by Pratik Koirala on 2/13/17.
//  Copyright © 2017 Pratik Koirala. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var detailmovieView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var movieView: UIImageView!
    var movie: NSDictionary = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: detailmovieView.frame.origin.y + detailmovieView.frame.size.height)
        titleLabel.text = movie["title"] as? String
        overviewLabel.text = movie["overview"] as? String
        overviewLabel.sizeToFit()
        // Do any additional setup after loading the view.
        if let posterPath = movie["poster_path"] as? String{
            let baseURL = "https://image.tmdb.org/t/p/w342"
            let imageURL = NSURL(string:baseURL + posterPath)
    
            movieView.setImageWith(imageURL as! URL)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
