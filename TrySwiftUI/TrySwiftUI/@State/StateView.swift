//
//  StateView.swift
//  TrySwiftUI
//
//  Created by Ji, Yun | Eric | RP on 2019/08/05.
//  Copyright © 2019 Ericji. All rights reserved.
//

import SwiftUI

struct StateView: View {    
    
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

#if DEBUG
struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
#endif
