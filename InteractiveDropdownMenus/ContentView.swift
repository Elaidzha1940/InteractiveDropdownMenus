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
    @State var idDropdownOpen = false
    
    var body: some View {
        
        ZStack {
            Color(Color("BG"))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ForEach(items) { item in
                    HStack {
                        Image(systemName: item.icon)
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                            .padding(10)
                            .background(.ultraThinMaterial, in: Circle())
                        
                        Text(item.title)
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                            .foregroundColor(.white.opacity(0.6))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.forward")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                            .foregroundColor(.white.opacity(0.6))
                    }
                    .padding(.horizontal)
                    .frame(width: idDropdownOpen ? 350 : 350 - CGFloat((items.count - 1 - items.firstIndex(where: {$0.id == item.id})!) * 10), height: 70)
                    .background(Color("BG"))
                    .cornerRadius(20)
                    .offset(y: idDropdownOpen ? 0 : CGFloat(-70 * items.firstIndex(where: { $0.id == item.id })!))
                    .shadow(color: .black.opacity(0.5), radius: 1, x: 2, y: -3)
                }
            }
            .onTapGesture {
                withAnimation(.interactiveSpring(response: 0.8, dampingFraction: 0.6)) {
                    idDropdownOpen.toggle()
                }
            }
        }
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
    DataItem(icon: "stop.fill", title: "Stop"),
    DataItem(icon: "backward.end.fill", title: "Back"),
    DataItem(icon: "forward.end.fill", title: "Forward"),
]
