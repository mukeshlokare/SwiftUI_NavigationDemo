//
//  ContentView.swift
//  NavigationDemo
//
//  Created by abc on 20/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: String? = nil

    var body: some View {
        NavigationView {
                    VStack {
                        NavigationLink(destination: Text("Second View"), tag: "Second", selection: $selection) { EmptyView() }
                        NavigationLink(destination: Text("Third View"), tag: "Third", selection: $selection) { EmptyView() }
                        Button("Tap to show second") {
                            self.selection = "Second"
                        }
                        Button("Tap to show third") {
                            self.selection = "Third"
                        }
                    }
                    .navigationTitle("Navigation")
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
