//
//  ViewController.swift
//  CodePath P2
//
//  Created by Sun Jang on 2023/03/07.
//

import UIKit
import Nuke


class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    

    var movies: [Movie] = []
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        let movie = movies[indexPath.row]

        // Configure the cell with it's associated track
        cell.configure(with: movie)
        
        return cell
    }
    

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Nuke.loadImage(with: Movie.poster_path, into: MovieImage)
        MovieName.string = Movie.original_title
        Moviedescription.text = Movie.overview
        MovieImage.url = Movie.poster_path


        tableView.dataSource = self
        // Do any additional setup after loading the view.
        movies = Movie.mockMovies
        print(movies)




    }


}

