//
//  MovieInfo.swift
//  Movies
//
//  Created by Noura. on 24/08/2022.
//

import SwiftUI

struct MovieInfo: View {
    var ourmovie: MovieModel
    var body: some View {
        ZStack {
            Color.black.opacity(0.8).ignoresSafeArea()
            Image(ourmovie.MovieName).opacity(0.3)
                .blur(radius: 20)
                
            VStack{
                Image(ourmovie.MovieName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 250, height: 250)
                    
                Text(ourmovie.MovieName)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                ScrollView(.horizontal){
                HStack{
                    ForEach(ourmovie.MovieActors, id:\.self){ act in
                        VStack{
                            Text(act)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .font(.title2)
                            Image(act)
                                .resizable()
                                .scaledToFit()
                                
                                
                        }
                    }
                }
                } .frame(width: 400, height: 200 )
            }
            
        }
    }
}

struct MovieInfo_Previews: PreviewProvider {
    static var previews: some View {
        MovieInfo(ourmovie: MovieModel(MovieName: "Ponyo", MovieActors: ["Ponyoo", "Ponyo-1"]))
            .previewDevice("iPhone 11 Pro")
    }
}
