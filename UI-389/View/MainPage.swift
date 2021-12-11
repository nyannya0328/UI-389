//
//  MainPage.swift
//  UI-389
//
//  Created by nyannyan0328 on 2021/12/11.
//

import SwiftUI

struct MainPage: View {
    @State var currentTab : String = "Home"
    
    
    @State var showSlider : Bool = false
    
    
    init(){
        
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        ZStack{
            
            SlideView(currentTab: $currentTab)
            
            
            CustomTabView(showSlide: $showSlider, currentTab: $currentTab)
                .cornerRadius(showSlider ? 15 : 0)
                .offset(x: showSlider ? getRect().width / 2 : 0)
                .rotation3DEffect(.init(degrees: showSlider ? -20 : 0), axis: (x: 0, y: 1, z: 0), anchor: .trailing)
                .ignoresSafeArea()
            
            
        }
        .preferredColorScheme(.dark)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
