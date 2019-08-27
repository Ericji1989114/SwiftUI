//
//  YjiTabStateView.swift
//  TrySwiftUI
//
//  Created by Eric on 2019/08/05.
//  Copyright © 2019 Ericji. All rights reserved.
//

import SwiftUI

struct YjiTabStateView: View {
        
    var body: some View {
        TabView {
            YjiStateView1()
            .tabItem{
                Image(systemName: "1.square.fill")
                Text("First")
            }
            YjiStateView2()
            .tabItem{
                Image(systemName: "2.square.fill")
                Text("Second")
            }
        }
        
    }
}

struct YjiStateView1: View {
    
    @State private var testInt: Int = 0
    
    var body: some View {
        Group {
            VStack {
                
                Text(String(testInt))
                
                Button(action: {
                    self.testInt += 1
                }) {
                    Text("Plus")
                }.padding()
                
                Button(action: {
                    self.testInt -= 1
                }) {
                    Text("Minus")
                    .foregroundColor(.red)
                }
            }
        }
    }
}

struct YjiStateView2: View {
    
    @State private var isShown = false
    
    var body: some View {
        VStack {
            if isShown {
                Text("Show")
            } else {
                Text("Hide")
            }
            Toggle(isOn: $isShown) {
                Text("Switch Button Text")
            }.padding()
        }
    }
}


#if DEBUG
struct YjiTabStateView_Previews: PreviewProvider {
    static var previews: some View {
        YjiTabStateView()
    }
}
#endif
