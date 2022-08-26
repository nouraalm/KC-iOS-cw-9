//
//  MovieModel.swift
//  Movies
//
//  Created by Noura. on 24/08/2022.
//

import Foundation

struct MovieModel: Identifiable{
    var id = UUID()
    var MovieName: String
    var MovieActors: [String]
}

var myMovies = [
  MovieModel(MovieName: "A silent voice", MovieActors: ["Shoya Ishida", "Shouko Nishimiya", "Yuzuru Nishimiya"]),
    MovieModel(MovieName: "When Marnie Was There", MovieActors: ["Marnie", "Anna"]),
  MovieModel(MovieName: "Spirited Away", MovieActors: ["Chihiro Ogino", "Haku", "bandai gaeru", "Yuzuru Nishimiya"]),
  MovieModel(MovieName: "Child of Kamiari Month", MovieActors: ["Kanna", "Shiro", "Yasha"])
  
]
