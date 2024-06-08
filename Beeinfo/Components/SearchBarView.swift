//
//  SearchBarView.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/8/24.
//

import SwiftUI

struct SearchBarView: View {
    @State private var textSearch = ""
    
    var body: some View {
        HStack {
            HStack(spacing: 15) {
                Button {
                    textSearch = ""
                } label: {
                    Image(systemName: textSearch == "" ? "magnifyingglass" : "xmark.circle.fill")
                }
                .foregroundStyle(Constant.textColor)
                
                TextField("Search", text: $textSearch)
                    .textInputAutocapitalization(.never)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "mic.fill")
                        .foregroundStyle(Constant.textColor)
                }
            }
            .padding(.horizontal)
            .frame(height: 40)
            .background(Color(.systemGray5))
            .cornerRadius(10) // harus digenti karena udah deprecated katanya
        }
    }
}

#Preview {
    SearchBarView()
}
