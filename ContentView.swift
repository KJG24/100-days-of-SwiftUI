//
//  ContentView.swift
//  WordScramble
//
//  Created by Koby Grah on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Stactic row 1")
            ForEach(0..<5) {
                Text("Dynamic row \($0)")
            }
        }
        
        func loadFile() {
            if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt") {
                if let fileContents = try? String(contentsOf: fileURL) {
                    fileContents
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
