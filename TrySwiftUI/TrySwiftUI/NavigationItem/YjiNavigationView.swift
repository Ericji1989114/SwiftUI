//
//  YjiNavigationView.swift
//  TrySwiftUI
//
//  Created by Eric on 2019/08/27.
//  Copyright © 2019 Ericji. All rights reserved.
//

import SwiftUI

struct YjiNavigationView: View {
    
    @State var showDetail: Bool = false
    
    var body: some View {
        NavigationLink(destination: DetailView(showSelf: $showDetail), isActive: $showDetail, label: {
            Text("Let's go to next view").foregroundColor(.white).background(Color.blue)
        })
    }
}

fileprivate struct DetailView: View {
    
    @Binding var showSelf: Bool
    
    fileprivate var goBackButton: some View {
        Button(action: {
            self.showSelf = false
        }) {
            Text("Go Back")
        }
    }
    
    var body: some View {
        VStack {
            Text("Welcome to Detail View")
            goBackButton
        }.navigationBarItems(trailing: goBackButton)
    }
}

struct YjiNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            YjiNavigationView()
        }
    }
}
