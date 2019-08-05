//
//  ContentView.swift
//  TrySwiftUI
//
//  Created by Eric on 2019/08/05.
//  Copyright © 2019 Ericji. All rights reserved.
//

import SwiftUI

struct Category {
    let id: Int
    let name: String
}

struct ContentView: View {
    
    let datasource: [Category] = [
        Category(id: 0, name: "Table View"),
        Category(id: 1, name: "Scroll View"),
        Category(id: 2, name: "Navigation Item")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(datasource, id: \.id) { item in
                    CategoryCell(name: item.name)
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
