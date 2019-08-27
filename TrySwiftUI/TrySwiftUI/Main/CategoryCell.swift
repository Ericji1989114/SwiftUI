//
//  CategoryCell.swift
//  TrySwiftUI
//
//  Created by Eric on 2019/08/05.
//  Copyright © 2019 Ericji. All rights reserved.
//

import SwiftUI

struct CategoryCell: View {
    
    let item: Category
    
    var body: some View {
        NavigationLink(destination: nextView(with: self.item.id)) {
            HStack {
                Text(item.name)
                .font(.system(size: 14))
                .foregroundColor(.black)
                Spacer()
                Image(systemName: "arrow.right.circle")
                .imageScale(.medium)
                .foregroundColor(.blue)
            }
        }
        
    }
    
    fileprivate func nextView(with id: Int) -> some View {
        Group {
            if id == 0 {
                YjiScrollView()
            } else if id  == 1 {
                YjiNavigationView()
            } else {
                YjiTabStateView()
            } 
        }
    }
    
}

fileprivate struct DeveloppingView: View {
    
    var body: some View {
        Text("Waiting...")
    }
    
}

#if DEBUG
struct CategoryCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCell(item: Category(id: 0, name: "Table View Cell")).previewLayout(.fixed(width: UIScreen.main.bounds.width, height: 50))
    }
}
#endif
