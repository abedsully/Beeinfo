//
//  HomeView.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/9/24.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedCategory: BeetCategoryFilter = .all
    
    var body: some View {
        VStack {
            VStack (alignment: .center, spacing: 16){
                SearchBarView()
                
                ScrollView (.horizontal){
                    HStack (alignment: .center, spacing: 10){
                        ForEach(BeetCategoryFilter.allCases) { category in
                            Text(category.title)
                                .font(.subheadline)
                                .frame(width: 60, height: 40)
                                .padding(.horizontal)
                                .background(Color(.systemGray5))
                                .foregroundStyle(Constant.textColor)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .onTapGesture {
                                    selectedCategory = category
                                }
                        }
                    }
                }
                .scrollIndicators(.never)
            }
            .padding(.vertical)
            
            LazyVStack {
                switch selectedCategory {
                case .all:
                    BeetsCell(beet: Beet.MOCK_BEET[0])
                    BeetsCell(beet: Beet.MOCK_BEET[1])
                case .fess:
                    Text("Fess")
                case .points:
                    Text("Points")
                case .tutor:
                    Text("Tutor")
                }
            }
            
            Spacer()
        }
        .padding(.horizontal)
        
        
    }
}

#Preview {
    HomeView()
}
