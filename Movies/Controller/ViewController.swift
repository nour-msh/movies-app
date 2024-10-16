//
//  ViewController.swift
//  Movies
//
//  Created by Nour on 14/10/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = [
        Movie(name: "Joker", rating: 5.3, time: "2", imageName: "joker", desc: "String", genre: "String"),
        Movie(name: "Monsters", rating: 7.8, time: "2", imageName: "monsters", desc: "String", genre: "String"),
        Movie(name: "The Penguin", rating: 9.0, time: "2", imageName: "penguin", desc: "String", genre: "String"),
        Movie(name: "Nobody Wants This", rating: 5.2, time: "2", imageName: "nobody", desc: "String", genre: "String"),
        Movie(name: "The Lord of The Rings", rating: 6.9, time: "2", imageName: "lord", desc: "String", genre: "String"),
        Movie(name: "Terrifier", rating: 7.0, time: "2", imageName: "terrifier", desc: "String", genre: "String"),
        
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let nib = UINib(nibName: "MovieTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MovieTableViewCell")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell", for: indexPath) as! MovieTableViewCell
        
        let movie = movies[indexPath.row]
        
        cell.ratingLabel.text = "\(movie.rating)"
        cell.movieDescLabel.text = movie.desc
        cell.movieGenreLabel.text = movie.genre
        cell.movieNameLabel.text = movie.name
        cell.movieTimeLabel.text = movie.time
        cell.imageViewLabel.image = UIImage(named: movie.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 121
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MovieDetailsViewController") as! MovieDetailsViewController
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
