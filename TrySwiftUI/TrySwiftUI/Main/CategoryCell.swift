//
//  CategoryCell.swift
//  TrySwiftUI
//
//  Created by Eric on 2019/08/05.
//  Copyright © 2019 Ericji. All rights reserved.
//

import SwiftUI

struct CategoryCell: View {
    
    let name: String
    
    var body: some View {
        HStack {
            Text(name)
                .font(.system(size: 14))
                .foregroundColor(.black)
            Spacer()
            Image(systemName: "arrow.right.circle")
            .imageScale(.medium)
            .foregroundColor(.blue)
        }
    }
}

#if DEBUG
struct CategoryCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCell(name: "Table View").previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 100))
    }
}
#endif
