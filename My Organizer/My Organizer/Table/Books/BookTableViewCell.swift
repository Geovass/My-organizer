//
//  BookTableViewCell.swift
//  My Organizer
//
//  Created by alumno on 14/02/23.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var numberOfPagesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUI()
    }
    
    func setUp(withBook book: Book){
        bookNameLabel.text = book.bookName
        bookNameLabel.numberOfLines = 0
        descriptionLabel.text = book.description
        descriptionLabel.numberOfLines = 0
        authorLabel.text = "Autor: " + book.author
        authorLabel.numberOfLines = 0
        numberOfPagesLabel.text = "Pags: " + book.numberOfPages
    }
    
    private func setUpUI(){
        bookImage.layer.cornerRadius = bookImage.bounds.height / 2
        bookImage.image = UIImage(systemName: "character.book.closed.zh.traditional")
        
    }
}
