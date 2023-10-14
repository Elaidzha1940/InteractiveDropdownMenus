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
            ForEach(items) { item in
                HStack {
                    Image(systemName: item.icon)
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                        .padding(10)
                        .background(.ultraThinMaterial, in: Circle())
                    
                    Text(item.title)
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
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}

struct DataItem: Identifiable {
    
    var id = UUID()
    var icon: String
    var title: String
}

let items: [DataItem] = [

    DataItem(icon: "play.fill", title: "Play"),
    DataItem(icon: "pause.circle.fill", title: "Pause"),
    DataItem(icon: "repeat.circle.fill", title: "Repeat"),
    DataItem(icon: "forward.end.fill", title: "Forward"),
]
