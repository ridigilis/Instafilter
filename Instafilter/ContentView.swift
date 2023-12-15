//
//  ContentView.swift
//  Instafilter
//
//  Created by Ricky David Groner II on 12/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var processedImage: Image?
    @State private var filterIntensity = 0.5
    
    func changeFilter() {
        
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                if let processedImage {
                    processedImage
                        .resizable()
                        .scaledToFit()
                } else {
                    ContentUnavailableView("No Picture", systemImage: "photo.badge.plus", description: Text("Tap to import a photo"))
                }
                
                Spacer()
                
                HStack {
                    Text("Intensity")
                    Slider(value: $filterIntensity)
                }
                .padding(.vertical)
                
                HStack {
                    Button("Change Filter", action: changeFilter)
                    
                    Spacer()
                }
                
                
            }
            .padding([.horizontal, .bottom])
            .navigationTitle("Instafilter")
        }
    }
}

#Preview {
    ContentView()
}
