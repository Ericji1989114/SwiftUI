//
//  YjiScrollView.swift
//  TrySwiftUI
//
//  Created by Ji, Yun | Eric | RP on 2019/08/16.
//  Copyright © 2019 Ericji. All rights reserved.
//

import SwiftUI

struct YjiScrollView: View {
    var body: some View {
        NavigationView {
            ScrollView(.horizontal) {
                HStack(alignment: .top) {
                    YjiAppInfoView(imageName: "pfu", createdTime: "2014", description: "Documents application")
                        .padding(.leading, 50)
                    YjiAppInfoView(imageName: "dianrong", createdTime: "2015", description: "P2P application")
                        .padding(.leading, 50)
                    YjiAppInfoView(imageName: "casio", createdTime: "2016", description: "SNS")
                        .padding(.leading, 50)
                    YjiAppInfoView(imageName: "yumemi1", createdTime: "2016", description: "online shopping application")
                        .padding(.leading, 50)
                }
            }
            .navigationBarTitle("About Me")
        }
    }
}

#if DEBUG
struct YjiScrollView_Previews: PreviewProvider {
    static var previews: some View {
        YjiScrollView()
    }
}
#endif
