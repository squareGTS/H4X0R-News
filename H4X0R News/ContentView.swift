//
//  ContentView.swift
//  H4X0R News
//
//  Created by Maxim Bekmetov on 04.10.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(post) {
                post in Text(post.title)
            }
            .navigationBarTitle("H4X0R NEWS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let post = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Bonjour"),
    Post(id: "3", title: "Hola")
]
