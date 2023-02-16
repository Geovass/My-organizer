//
//  UserContent.swift
//  My Organizer
//
//  Created by Geovanni Romero on 13/02/23.
//

import Foundation

struct User {
    var name: String
    let edad: Int
    let email: String
    var password: String
    
    init(name: String, edad: Int, email: String, password: String) {
        self.name = name
        self.edad = edad
        self.email = email
        self.password = password
    }
}

struct Book{
    let bookName: String
    let author: String
    let numberOfPages: String
    let description: String
    
    init(bookName: String, author: String, numberOfPages: String, description: String) {
        self.bookName = bookName
        self.author = author
        self.numberOfPages = numberOfPages
        self.description = description
    }
}

struct Movie{
    let movieName: String
    let director: String
    let genre: String
    let duration: Double
    let sinopsis: String
    
    init(movieName: String, director: String, genre: String, duration: Double, sinopsis: String) {
        self.movieName = movieName
        self.director = director
        self.genre = genre
        self.duration = duration
        self.sinopsis = sinopsis
    }
}

struct Serie{
    let serieName: String
    let creator: String
    let genres: String
    let numberOfChapters: Int
    let seassons: Int
    let topic: String
    
    init(serieName: String, creator: String, genres: String, numberOfChapters: Int, seassons: Int, topic: String) {
        self.serieName = serieName
        self.creator = creator
        self.genres = genres
        self.numberOfChapters = numberOfChapters
        self.seassons = seassons
        self.topic = topic
    }
}
