//
//  ContentView.swift
//  Movies
//
//  Created by Noura. on 24/08/2022.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        NavigationView{
        List{
            
            ForEach(myMovies){ movie in
                NavigationLink(destination: {
                    MovieInfo(ourmovie: movie)
                }, label: {
                    RowView(movie: movie.MovieName)
                })
               }
        } .navigationTitle("Movies")
        }
        
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}


