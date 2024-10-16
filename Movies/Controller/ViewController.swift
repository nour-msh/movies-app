// ViewController.swift
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var movies: [Movie] = [
        Movie(name: "Joker", rating: 5.3, time: "2h", imageName: "joker", desc: "A man struggles to find his place in the world.", genre: "Drama"),
        Movie(name: "Monsters", rating: 7.8, time: "1h 45m", imageName: "monsters", desc: "A tale of monsters and humanity.", genre: "Horror"),
        Movie(name: "The Penguin", rating: 9.0, time: "2h 10m", imageName: "penguin", desc: "A deep dive into the life of a penguin.", genre: "Documentary"),
        Movie(name: "Nobody Wants This", rating: 5.2, time: "1h 30m", imageName: "nobody", desc: "A dark comedy about loneliness.", genre: "Comedy"),
        Movie(name: "The Lord of The Rings", rating: 6.9, time: "3h", imageName: "lord", desc: "An epic adventure of friendship and bravery.", genre: "Fantasy"),
        Movie(name: "Terrifier", rating: 7.0, time: "1h 20m", imageName: "terrifier", desc: "A horror film that brings nightmares to life.", genre: "Horror"),
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
        cell.setup(movie: movie) // Use the setup method
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 121
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MovieDetailsViewController") as! MovieDetailsViewController
        
        viewController.movie = movies[indexPath.row] // Pass the selected movie
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
