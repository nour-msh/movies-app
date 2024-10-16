// MovieTableViewCell.swift
import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageViewLabel: UIImageView!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDescLabel: UILabel!
    @IBOutlet weak var movieGenreLabel: UILabel!
    @IBOutlet weak var movieTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageViewLabel.layer.cornerRadius = 10
        imageViewLabel.clipsToBounds = true // Ensure the corners are clipped
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(movie: Movie) {
//        ratingLabel.text = "\(movie.rating)"
        movieDescLabel.text = movie.desc
        movieGenreLabel.text = movie.genre
        movieNameLabel.text = movie.name
        movieTimeLabel.text = movie.time
        imageViewLabel.image = UIImage(named: movie.imageName)
    }
}
