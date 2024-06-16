//
//  AddBeetsView.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/15/24.
//

import SwiftUI

struct AddBeetsView: View {
    
    let user: User

    @Binding var tabIndex: Int
    
    @State private var beetCaption: String = ""
    @FocusState private var isFocused: Bool
    
    init(tabIndex: Binding<Int>, user: User){
        _tabIndex = tabIndex
        self.user = user
    }
    
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading, spacing: 24){
                
                HStack{
                    CircularProfileImageView(user: user, size: .xSmall)
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                TextField("What's happening ... ", text: $beetCaption)
                    .focused($isFocused)
                    .fontWeight(.medium)
                    .foregroundStyle(Color(.systemGray2))
                    .onAppear {
                        self.isFocused = true
                        
                    }
                Spacer()
                
                HStack{
                    Image(systemName: "photo")
                    Image(systemName: "mic.fill")
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, 24)
            
            // MARK: - Top Bar
            .navigationTitle("New Beet")
            .navigationBarTitleDisplayMode(.inline)
            .scrollIndicators(.never)
            .padding(.horizontal)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        tabIndex = 0
                    } label: {
                        Image(systemName: "xmark")
                            .imageScale(.medium)
                            .foregroundStyle(Constant.textColor)
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Text("Post")
                            .padding(5)
                            .foregroundStyle(Constant.mainColor)
                        
                    }
                }
            }
        }
        .onAppear {
            // Set the focus state to true when the view appears
            self.isFocused = true
        }
        .onChange(of: isFocused) { newValue in
            if !newValue {
                // If the focus state changes to false, set it back to true to prevent dismissal
                DispatchQueue.main.async {
                    self.isFocused = true
                }
            }
        }
        
    }
}

#Preview {
    AddBeetsView(tabIndex: .constant(0), user: User.MOCK_USER[0])
}
