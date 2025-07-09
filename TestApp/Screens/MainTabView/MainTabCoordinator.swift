//
//  MainTabCoordinator.swift
//  SwiftAppTemplate
//
//  Created by Gunveer Sandhu on 03/01/24.
//

import SwiftUI

struct MainTabCoordinator: View {
    @StateObject var viewModel: MainTabViewModel = MainTabViewModel()
    var edgeTransition: AnyTransition = .move(edge: .leading)
    
    
    var body: some View {
        ZStack(alignment: .top){
            VStack{
                
                tabView
            }
            
        }
    }
    
    var tabView: some View{
TabView(selection: $viewModel.selectedTab, content:  {
    Tab1Screen().tabItem { TabItem(title: "Tab1", icon: "1.circle.fill") }.tag(Tab.tab1)
    Tab2Screen().tabItem { TabItem(title: "Tab2", icon: "2.circle.fill") }.tag(Tab.tab2)
    Tab3Screen().tabItem { TabItem(title: "Tab3", icon: "3.circle.fill") }.tag(Tab.tab3)
})
        .accentColor(.primaryNavyBlue)
        .onAppear{
            UITabBar.appearance().unselectedItemTintColor = UIColor(Color.secondaryLightBlue)
        }
    }
    
}

#Preview {
    MainTabCoordinator()
}
