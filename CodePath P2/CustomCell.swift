//
//  CustomCell.swift
//  CodePath P2
//
//  Created by Sun Jang on 2023/03/07.
//

import UIKit
import Nuke

class CustomCell: UITableViewCell {
    @IBOutlet weak var MovieName: UILabel!
    @IBOutlet weak var Moviedescription: UITextField!
    
    @IBOutlet weak var MovieImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        MovieName.text = movie.original_title
        Moviedescription.text = movie.overview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.poster_path, into: MovieImage)
    }

}
