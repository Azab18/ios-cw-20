//
//  ContentView.swift
//  day7-MovieApp
//
//  Created by Shaimaa on 23/03/2022.
//

import SwiftUI

struct ContentView: View {
    let movies = ["interstaller", "knives out", "sherlok holmes"]
    var body: some View {
        
        List(movies, id: \.self){ movie in
            ExtractedView(movie: movie)
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct ExtractedView: View {
    var movie: String
    var body: some View {
        HStack{
            Image(movie)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
            
            Text(movie)
            
        }
    }
}
