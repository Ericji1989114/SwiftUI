//
//  YjiAppInfoView.swift
//  TrySwiftUI
//
//  Created by Ji, Yun | Eric | RP on 2019/08/16.
//  Copyright © 2019 Ericji. All rights reserved.
//

import SwiftUI

struct YjiAppInfoView: View {
    
    let imageName: String
    let createdTime: String
    let description: String
    
    var body: some View {
        VStack(alignment: .center) {
            Image(imageName)
            .resizable()
            .frame(width: 80, height: 80, alignment: .center)
            Text(createdTime)
            .font(.headline)
            Text(description)
            .font(.system(.body))
            .frame(maxWidth: 50)
        }
        
    }
}

#if DEBUG
struct YjiAppInfoView_Previews: PreviewProvider {
    static var previews: some View {
        YjiAppInfoView(imageName: "yumemi1", createdTime: "2016", description: "Online Shopping")
    }
}
#endif
