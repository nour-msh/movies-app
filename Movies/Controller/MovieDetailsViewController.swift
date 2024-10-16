// MovieDetailsViewController.swift
import UIKit

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieGenreLabel: UILabel!
    @IBOutlet weak var movieTimeLabel: UILabel!
    @IBOutlet weak var movieDescLabel: UILabel!
    @IBOutlet weak var movieNameLabel: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Ensure the movie object is set before accessing its properties
        if let movie = movie {
            movieNameLabel.text = movie.name
            movieDescLabel.text = movie.desc
            movieGenreLabel.text = movie.genre
            movieTimeLabel.text = movie.time
            movieImageView.image = UIImage(named: movie.imageName)
        }
    }
}
