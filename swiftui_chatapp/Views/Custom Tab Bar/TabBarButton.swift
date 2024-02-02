//
//  TabBarButton.swift
//  swiftui_chatapp
//
//  Created by Omer Cagri Sayir on 2.02.2024.
//

import SwiftUI

struct TabBarButton: View {
    var buttonText: String
    var imageName: String
    var isActive: Bool
    
    var body: some View {
        GeometryReader { geo in
            if isActive {
                Rectangle()
                    .foregroundStyle(.blue)
                    .frame(width: geo.size.width/2, height: 4)
                    .padding(.leading, geo.size.width / 4)
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .circular))
            }
            
            VStack(alignment: .center, spacing: 4) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width:24, height: 24)
                Text(buttonText)
                    .font(Font.tabBar)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

#Preview {
    TabBarButton(buttonText: "Contacts", imageName: "person", isActive: true)
}
