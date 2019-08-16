//
//  ContentView.swift
//  TrySwiftUI
//
//  Created by Eric on 2019/08/05.
//  Copyright © 2019 Ericji. All rights reserved.
//

import SwiftUI

struct Category: Identifiable {
    let id: Int
    let name: String
}

struct ContentView: View {
    
    let datasource: [Category] = [
        Category(id: 0, name: "Scroll View"),
        Category(id: 1, name: "Navigation Item"),
        Category(id: 2, name: "@State")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(datasource, id: \.id) { item in
                        CategoryCell(item: item)
                    }
                }
            }
            .navigationBarTitle("Try SwiftUI")
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
