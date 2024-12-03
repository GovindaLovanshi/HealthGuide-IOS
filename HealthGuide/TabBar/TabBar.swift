//
//  TabBar.swift
//  HealthGuide
//
//  Created by Govinda lovanshi on 30/11/24.
//

import SwiftUI

struct TabBar: View {
    @State private var selectedInddex = 0
    var body: some View {
        TabView(selection: $selectedInddex){
            HomeView()
                .onAppear{
                    selectedInddex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            
            ChatView()
                .onAppear{
                    selectedInddex = 1
                }
                .tabItem{
                    Image(systemName: "paperplane")
                }.tag(1)
            
            DepartMentView()
                .onAppear{
                    selectedInddex = 2
                }
                .tabItem{
                    Image(systemName: "plus.square")
                }.tag(2)
            
            ExploreView()
                .onAppear{
                    selectedInddex = 3
                }
                .tabItem{
                    Image(systemName: "heart")
                }.tag(3)

            
            ProfileView()
                .onAppear{
                    selectedInddex = 4
                }
                .tabItem{
                    Image(systemName: "person")
                }.tag(4)

        }
        .accentColor(.green)
    }
}

#Preview {
    TabBar()
}


