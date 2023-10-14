//  /*
//
//  Project: InteractiveDropdownMenus
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.10.2023
//
//  */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            HStack {
              
                Image(systemName: "xmark")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .padding(10)
                    .background(.ultraThinMaterial, in: Circle())
                
                Text("title")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                
                Spacer()
                
                Image(systemName: "chevron.forward")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
            }
            .padding(.horizontal)
            .frame(width: 300, height: 70)
            .background(Color.gray)
            .cornerRadius(20)
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
