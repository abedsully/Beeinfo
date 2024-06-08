//
//  UserContentListView.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/7/24.
//

import SwiftUI

struct UserContentListView: View {
    let user: User
    
    // Filter list: Beeets & Beesh
    @State private var selectedFilter: ProfileActivityFilter = .beets
    
    @Namespace var animation
    
    // Determining the width
    private var filterBarWidth: CGFloat {
        let count = CGFloat(ProfileActivityFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(ProfileActivityFilter.allCases) { filter in
                    VStack {
                        Text(filter.title)
                            .font(.subheadline)
                            .foregroundStyle(selectedFilter == filter ? Constant.textColor : Color(.systemGray2))
                            .fontWeight(selectedFilter == filter ? .semibold : .regular)
                        
                        if selectedFilter == filter {
                            Rectangle()
                                .foregroundColor(Constant.textColor)
                                .frame(width: filterBarWidth, height: 1)
                                .matchedGeometryEffect(id: "item", in: animation)
                        }
                        
                        else {
                            Rectangle()
                                .foregroundColor(Color(.systemGray4))
                                .frame(width: filterBarWidth, height: 1)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.spring()) {
                            selectedFilter = filter
                        }
                    }
                    .padding(.vertical)
                }
            }
            
            LazyVStack {
                switch selectedFilter {
                case .beets:
                    Text("Beets")
                case .beesh:
                    Text("Beesh")
                }
            }
        }
    }
}

#Preview {
    UserContentListView(user: User.MOCK_USER[0])
}
