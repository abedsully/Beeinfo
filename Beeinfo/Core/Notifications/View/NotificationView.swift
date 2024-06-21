//
//  NotificationView.swift
//  Beeinfo
//
//  Created by Stefanus Albert Wilson on 6/16/24.
//

import SwiftUI

struct NotificationView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...5, id: \.self) { beet in
                        NotificationCell(beet: Beet.MOCK_BEET[1])
                    }
                }
                .padding(.horizontal, 5)
            }
            .padding(.vertical)
            Spacer()
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NotificationView()
}
