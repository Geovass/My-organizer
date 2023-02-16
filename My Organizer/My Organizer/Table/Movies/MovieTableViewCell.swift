//
//  MovieTableViewCell.swift
//  My Organizer
//
//  Created by alumno on 14/02/23.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var directorNameLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var sinopsisLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }
    
    func setUp(withBook movie: Movie){
        movieNameLabel.text = movie.movieName
        sinopsisLabel.text = movie.sinopsis
    }
    
    private func setUpUI(){
        movieImage.layer.cornerRadius = movieImage.bounds.height / 2
        movieImage.image = UIImage(systemName: "recordingtape.circle.fill")
        
    }
}
