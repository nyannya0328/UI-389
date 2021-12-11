//
//  ContentView.swift
//  UI-389
//
//  Created by nyannyan0328 on 2021/12/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       MainPage()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View{
    
    func getRect()->CGRect{
        
        
        return UIScreen.main.bounds
        
    }
    
    func getSafeArea() -> UIEdgeInsets{
        
        
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
            
            return .zero
        }
        
        guard let safeArea = screen.windows.first?.safeAreaInsets else{
            
            return .zero
        }
        
        
        return safeArea
    }
    
    
}
