//
//  ContentView.swift
//  W10JSONApp
//
//  Created by Default User on 11/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Welcome to our remote database app")
                NavigationLink(destination: ListDataView()){
                    Text("Begin")
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
