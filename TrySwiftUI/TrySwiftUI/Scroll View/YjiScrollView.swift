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
        ScrollView(.horizontal) {
            HStack(alignment: .top) {
                YjiAppInfoView(imageName: "pfu", createdTime: "2014", description: "ScanSnap")
                    .padding(.leading, 50)
                YjiAppInfoView(imageName: "dianrong", createdTime: "2015", description: "Dianrong")
                    .padding(.leading, 50)
                YjiAppInfoView(imageName: "casio", createdTime: "2016", description: "Snap Story")
                    .padding(.leading, 50)
                YjiAppInfoView(imageName: "yumemi1", createdTime: "2016", description: "Uniqlo")
                    .padding(.leading, 50)
                YjiAppInfoView(imageName: "rpay", createdTime: "2018", description: "Rakuten Pay")
                    .padding(.leading, 50)
            }.navigationBarTitle("About Me")
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
