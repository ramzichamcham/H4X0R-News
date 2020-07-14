//
//  ContentView.swift
//  H4X0R News
//
//  Created by Ramzi chamcham on 2020-03-03.
//  Copyright © 2020 Ramzi Chamcham. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { (post: Post) in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }.navigationBarTitle("H4X0R NEWS")
        }
            .onAppear{              //like viewDidLoad in the UIKit world.
                self.networkManager.fetchData()       //trailing closure
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}






