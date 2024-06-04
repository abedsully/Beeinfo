//
//  SplashView.swift
//  Beeinfo
//
//  Created by Adrian Yu on 04/06/24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 250, height: 250)
        }
    }
}

#Preview {
    SplashView()
}
