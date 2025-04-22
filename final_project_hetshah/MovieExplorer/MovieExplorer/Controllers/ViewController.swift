//
//  ViewController.swift
//  MovieExplorer
//
//  Created by Het Shah on 2025-04-16.
//

import UIKit

enum MovieSection: Int, CaseIterable {
    case popular = 0
    case topRated
    case nowPlaying

    var title: String {
        switch self {
        case .popular: return "🔥 Popular"
        case .topRated: return "⭐ Top Rated"
        case .nowPlaying: return "🎬 Now Playing"
        }
    }

    var endpoint: String {
        switch self {
        case .popular: return "popular"
        case .topRated: return "top_rated"
        case .nowPlaying: return "now_playing"
        }
    }
}
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    let apiKey = "f5c735b2aefab6906ac80d771d096e08"
        var moviesBySection: [MovieSection: [Movie]] = [:]

        override func viewDidLoad() {
            super.viewDidLoad()
            title = "Main Playlist"

            tableView.delegate = self
            tableView.dataSource = self

            for section in MovieSection.allCases {
                fetchMovies(for: section)
            }
        }

        @IBAction func goToSearch(_ sender: UIButton) {
            performSegue(withIdentifier: "showSearchScreen", sender: self)
        }

        func fetchMovies(for section: MovieSection) {
            let urlString = "https://api.themoviedb.org/3/movie/\(section.endpoint)?api_key=\(apiKey)"
            guard let url = URL(string: urlString) else { return }

            let task = URLSession.shared.dataTask(with: url) { data, _, _ in
                if let data = data {
                    let decoder = JSONDecoder()
                    if let movieList = try? decoder.decode(MovieList.self, from: data) {
                        DispatchQueue.main.async {
                            self.moviesBySection[section] = movieList.results
                            self.tableView.reloadData()
                        }
                    }
                }
            }
            task.resume()
        }

        func numberOfSections(in tableView: UITableView) -> Int {
            return MovieSection.allCases.count
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            guard let sectionType = MovieSection(rawValue: section),
                  let movies = moviesBySection[sectionType] else { return 0 }
            return movies.count
        }

        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return MovieSection(rawValue: section)?.title
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let sectionType = MovieSection(rawValue: indexPath.section),
                  let movies = moviesBySection[sectionType] else { return UITableViewCell() }

            let movie = movies[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
            cell.textLabel?.text = movie.title

        
            cell.imageView?.image = UIImage(named: "placeholder")

            if let posterPath = movie.poster_path {
                let imageURL = URL(string: "https://image.tmdb.org/t/p/w500\(posterPath)")
                DispatchQueue.global().async {
                    if let url = imageURL, let data = try? Data(contentsOf: url) {
                        DispatchQueue.main.async {
                            cell.imageView?.image = UIImage(data: data)
                            cell.setNeedsLayout()
                        }
                    }
                }
            }

            return cell
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showDetail",
               let detailVC = segue.destination as? DetailViewController,
               let indexPath = tableView.indexPathForSelectedRow,
               let sectionType = MovieSection(rawValue: indexPath.section),
               let movies = moviesBySection[sectionType] {
                detailVC.movie = movies[indexPath.row]
            }
        }
    }
